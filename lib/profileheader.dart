import 'package:flutter/material.dart';
import 'package:example_app/main.dart';

const primary = Color(0xff4268b0);
const background = Color(0xffcde2f5);


class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      padding: const EdgeInsets.fromLTRB(30, 50, 30, 30),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://example.com/profile_image.jpg'), // Replace with the actual image URL            ),
            ),
          ),
          const SizedBox(width: 16),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello User!',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              Text(
                '@userhandle',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
        ],
      ),
    );

  }} 