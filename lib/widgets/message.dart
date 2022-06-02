import 'package:flutter/material.dart';

enum Status { sent, delivered, read }

class Message extends StatelessWidget {
  final String profilePath;
  final String name;
  final String message;
  final String time;
  final Status status;

  const Message({
    Key? key,
    required this.profilePath,
    required this.name,
    required this.message,
    required this.time,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(profilePath),
                ),
                const CircleAvatar(
                  radius: 9,
                  backgroundColor: Color.fromRGBO(0, 151, 51, 1),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),
                  ),
                  Text(
                    message,
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.bold,
                      fontSize: 10.0,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    status == Status.sent ? Icons.done : Icons.done_all,
                    color: status == Status.read
                        ? const Color.fromRGBO(0, 88, 192, 1)
                        : Colors.white60,
                    size: 18,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    time,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
