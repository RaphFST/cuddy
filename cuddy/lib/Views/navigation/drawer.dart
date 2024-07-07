import 'package:cuddy/Views/home/home_view.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 130,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Menu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeView()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              // Ajoutez l'action pour l'option Settings
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_mail),
            title: const Text('Contact'),
            onTap: () {
              // Ajoutez l'action pour l'option Contact
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About'),
            onTap: () {
              // Ajoutez l'action pour l'option About
            },
          ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Help'),
              onTap: () {
                // Ajoutez l'action pour l'option Help
              },
          ),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text('Rate the app'),
            onTap: () {
              // Ajoutez l'action pour l'option Rate the app
            },
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text('Share the app'),
            onTap: () {
              // Ajoutez l'action pour l'option Share the app
            },
          ),
          ListTile(
            leading: const Icon(Icons.bug_report),
            title: const Text('Report a bug'),
            onTap: () {
              // Ajoutez l'action pour l'option Report a bug
            },
          ),
          ListTile(
            leading: const Icon(Icons.privacy_tip),
            title: const Text('Privacy Policy'),
            onTap: () {
              // Ajoutez l'action pour l'option Privacy Policy
            },
          ),
          ListTile(
            leading: const Icon(Icons.security),
            title: const Text('Terms of Service'),
            onTap: () {
              // Ajoutez l'action pour l'option Terms of Service
            },
          ),
          ListTile(
            leading: const Icon(Icons.lock),
            title: const Text('Legal'),
            onTap: () {
              // Ajoutez l'action pour l'option Legal
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () {
              // Ajoutez l'action pour l'option Logout
            },
          ),
        ],
      ),
    );
  }
}
