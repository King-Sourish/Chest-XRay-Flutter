import 'package:cognix_chest_xray/Nishkarsh/profileheader.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const ProfileHeader(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _buildMenuItem(Icons.person, 'Profile', context),
                _buildMenuItem(Icons.notifications, 'Notifications', context),
                _buildMenuItem(Icons.settings, 'App Settings', context),
                _buildMenuItem(Icons.privacy_tip, 'Privacy', context),
                _buildMenuItem(Icons.help, 'Help & Support', context),
                _buildMenuItem(Icons.question_answer, 'FAQs', context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title, BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        // color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(icon, color: Theme.of(context).primaryColor),
        title: Text(title, style: const TextStyle(color: Colors.black54)),
        onTap: () {
          // Handle navigation or other logic here
        },
      ),
    );
  }
}