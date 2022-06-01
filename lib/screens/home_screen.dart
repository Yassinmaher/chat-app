import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(41, 47, 63, 1),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile_image.jpg'),
          ),
        ),
        title: const Text(
          'Chat App',
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(139, 139, 139, 0.12),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.logout,
                  color: Colors.white,
                  size: 18,
                ),
              ))
        ],
      ),
    );
  }
}
