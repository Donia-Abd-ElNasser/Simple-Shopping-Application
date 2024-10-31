import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
static String id = 'Profile Page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData( color: Theme.of(context).primaryColor,),
        backgroundColor:Colors.white ,
        title: Text('Profile',style: TextStyle(color:Theme.of(context).primaryColor ,fontWeight: FontWeight.bold),),
      ),
      body:
      ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const SizedBox(height: 80),
          
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Account Details'),
            onTap: () {
              // Navigate to Account Details page
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.message),
            title: const Text('Inbox'),
            onTap: () {
              
            },
          ),
           const Divider(),
          ListTile(
            leading: const Icon(Icons.add_box),
            title: const Text('Orders'),
            onTap: () {
             
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              // Navigate to Settings page
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text('Help & Support'),
            onTap: () {
              // Navigate to Help & Support page
            },
          ),
          const Divider(),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
               
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
              ),
              child: const Text('Sign Out',style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}
