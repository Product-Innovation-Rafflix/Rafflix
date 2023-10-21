import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketManager {
  static late final SocketManager _instance = SocketManager._internal();
  late IO.Socket socket;

  factory SocketManager() {
    return _instance;
  }

  SocketManager._internal() {
    socket =
        IO.io('https://rafflixbackgroundsevice.onrender.com', <String, dynamic>{
      'transports': ['websocket'],
    });

    socket.on('connect', (_) {
      print('Connected to server');
    });

    socket.on('connect_error', (error) {
      print('Connection error: $error');
    });

    socket.on('connect_timeout', (_) {
      print('Connection timeout');
    });

    socket.on('connecting', (data) {
      print('Connecting to server: $data');
    });

    socket.on('disconnect', (_) {
      print('Disconnected from server');
    });
  }
}
