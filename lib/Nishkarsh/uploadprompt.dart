import 'package:cognix_chest_xray/Nishkarsh/profileheader.dart';
import 'package:cognix_chest_xray/Nishkarsh/usermenu.dart';
import 'package:cognix_chest_xray/main.dart';
import 'package:flutter/material.dart';

class UploadPromptScreen extends StatelessWidget {
  const UploadPromptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileHeader(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InstructionText(),
              UploadButtons(),
              UploadInstructions(),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: primary,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class InstructionText extends StatelessWidget {
  const InstructionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text(
        'Welcome to our Chest X-Ray App! You can upload your chest X Ray images and get both AI guidance as well as consult a doctor.',
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}

class UploadButtons extends StatelessWidget {
  const UploadButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, 'upload_pic/');
              },
              icon: const Icon(Icons.camera_alt),
              label: const Text('Upload Pic'),
              style: ElevatedButton.styleFrom(
                backgroundColor: primary,
                foregroundColor: Colors.white,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.report),
              label: const Text('View Report'),
              style: ElevatedButton.styleFrom(
                backgroundColor: primary,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        );
  }
}

class UploadInstructions extends StatelessWidget {
  const UploadInstructions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        children: [
          Text(
            'Instructions to upload image',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text('- Instruction1'),
          Text('- Instruction2'),
          Text('- Instruction3'),
        ],
      ),
    );
  }
}