import 'package:flutter/material.dart';
import 'package:real_state_ui_clone/font_style.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.chevron_left,
                  size: 23,
                  color: Colors.black,
                )),
            Text(
              "Settings",
              style: defaultTextstyle.copyWith(color: Colors.black),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          ListTile(
            onTap: () {},
            title: Text(
              "My Account",
              style: thinTextstyle,
            ),
            trailing: const Icon(Icons.chevron_right),
          ),
          const Divider(),
          ListTile(
            onTap: () {},
            title: Text(
              "Bookings",
              style: thinTextstyle,
            ),
            trailing: const Icon(Icons.chevron_right),
          ),
          const Divider(),
          ListTile(
            onTap: () {},
            title: Text(
              "Help & Support",
              style: thinTextstyle,
            ),
            trailing: const Icon(Icons.chevron_right),
          ),
          const Divider(),
          ListTile(
            onTap: () {},
            title: Text(
              "Settings",
              style: thinTextstyle,
            ),
            trailing: const Icon(Icons.chevron_right),
          ),
          const Divider(),
          ListTile(
            onTap: () {},
            title: Text(
              "Logout",
              style: thinTextstyle,
            ),
            trailing: const Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}
