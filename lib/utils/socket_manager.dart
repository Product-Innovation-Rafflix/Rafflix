import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:rafflix/utils/GetStoredCookie.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class SocketManager {
  static final SocketManager _instance = SocketManager._internal();
  late IO.Socket socket;
  late String? cookie;

  factory SocketManager() {
    return _instance;
  }

  SocketManager._internal() {
    _initializeSocket();
  }

  void _initializeSocket() async {
    try {
      await WidgetsFlutterBinding.ensureInitialized();
      cookie = await getStoredCookie();
      if (cookie != null) {
        final Map<String, dynamic> decodedToken = JwtDecoder.decode(cookie!);
        final String? phoneNumber = decodedToken[
            'phone']; // Assuming the key for the phone number is 'phone'
        print('Phone number: $phoneNumber');
        socket = IO.io(
            'https://rafflixbackgroundsevice.onrender.com', <String, dynamic>{
          'transports': ['websocket'],
          'autoConnect': false,
          'auth': {
            'phone': phoneNumber,
          },
        });

        socket.onConnect((data) {
          print('Connected to server: $data');
        });

        socket.onConnectError((data) {
          print('Connection error: $data');
        });

        socket.onConnectTimeout((data) {
          print('Connection timeout: $data');
        });

        socket.onConnecting((data) {
          print('Connecting to server: $data');
        });

        socket.onDisconnect((data) {
          print('Disconnected from server: $data');
        });

        socket.connect();
      }
    } catch (e) {
      print('Error initializing socket: $e');
    }
  }
}
