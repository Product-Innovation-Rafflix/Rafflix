import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 350,
          height: 800,
          decoration: BoxDecoration(color: Colors.white),
          clipBehavior: Clip.antiAlias,
          child: Stack(
            children: [
              Positioned(
                left: 125,
                top: 85,
                child: Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    height: 0,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              Positioned(
                left: 93,
                top: 114,
                child: Opacity(
                  opacity: 0.5,
                  child: Text(
                    'Please sign in to your account',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      height: 0,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -113,
                top: 115,
                child: Container(
                  width: 356,
                  height: 408,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          NetworkImage("https://via.placeholder.com/356x408"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 507,
                left: 30,
                child: SizedBox(
                  height: 50,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(width: 1),
                      ),
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
