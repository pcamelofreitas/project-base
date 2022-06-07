import 'package:flutter/material.dart';

import 'package:project_base/src/home/domain/models/user_model.dart';

class UserCard extends StatelessWidget {
  final UserModel user;
  const UserCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          height: 100,
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(user.avatar),
                radius: 50,
              ),
              const SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ID: ${user.id}',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  Text('Name: ${user.firstName} ${user.lastName}',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  Text(
                    'Email: ${user.email}',
                    style: const TextStyle(fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
