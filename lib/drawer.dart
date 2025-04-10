import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.deepPurple
            ),
            child: Text(
                '메뉴',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24
                )
            ),
          ),
          ListTile(
              leading: const Icon(Icons.home),
              title: const Text('홈'),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/", (route) => false
                );
              }
          ),

          ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('설정'),
              onTap: () {
                Navigator.pushNamed(
                    context, "/setting"
                );
              }
          ),
          ListTile(
              leading: const Icon(Icons.info),
              title: const Text('popup page'),
              onTap: () {
                Navigator.pushNamed(
                    context, "/popup"
                );
              }
          ),

          ListTile(
              leading: const Icon(Icons.display_settings),
              title: const Text('Flex 예제'),
              onTap: () {
                Navigator.pushNamed(
                    context, "/flex"
                );
              }
          ),
          ListTile(
              leading: const Icon(Icons.image),
              title: const Text('image 예제'),
              onTap: () {
                Navigator.pushNamed(
                    context, "/image"
                );
              }
          ),
          ListTile(
              leading: const Icon(Icons.elevator),
              title: const Text('button 예제'),
              onTap: () {
                Navigator.pushNamed(
                    context, "/button"
                );
              }
          ),
          ListTile(
              leading: const Icon(Icons.list),
              title: const Text('list 예제'),
              onTap: () {
                Navigator.pushNamed(
                    context, "/list"
                );
              }
          ),



        ],
      ),
    );
  }
}
