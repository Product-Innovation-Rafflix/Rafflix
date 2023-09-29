import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class UserProfileDrawer extends StatelessWidget {
  const UserProfileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Mynn Htet Ko'),
            accountEmail: const Text('mynnhtetko@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('images/iPhone.png')),
            ),
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage('images/luxury.png'), fit: BoxFit.cover)),
          ),
          ListTile(
            leading: Icon(Icons.file_upload),
            title: Text('Upload shot'),
            onTap: () => print('Upload Tapped'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
            onTap: () => print('Profile Tapped'),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Messages'),
            onTap: () => print('Messages Tapped'),
          ),
          ListTile(
            leading: Icon(Icons.line_axis),
            title: Text('Stats'),
            onTap: () => print('Stats Tapped'),
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () => print('Share Tapped'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            onTap: () => print('Notification Tapped'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => print('Settings Tapped'),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Sign Out'),
            onTap: () => print('Logout Tapped'),
          ),
        ],
      ),
    );
  }
}
