import 'package:chat_app/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/message.dart';

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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignIn(),
                  ),
                );
              },
              icon: Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(139, 139, 139, 0.12),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.logout,
                  color: Colors.white,
                  size: 18,
                ),
              ))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(0, 0, 0, 0.25),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(10.0),
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Search',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const Message(
                  profilePath: 'assets/images/profile_image.jpg',
                  name: 'Yassin Maher',
                  message: 'How are you? Iam yassin maher flutter developer',
                  time: '10:00 AM',
                  status: Status.read,
                );
              },
              itemCount: 100,
            ),
          ),
        ],
      ),
    );
  }
}
