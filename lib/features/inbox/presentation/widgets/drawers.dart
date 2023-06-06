import 'package:flutter/material.dart';
import 'package:nicetry/constants/const.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: const Text('Chats'),
        )
      ],
    );
  }
}

class MessengerDrawer extends Drawer {
  const MessengerDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        shrinkWrap: true,
        children: [
          const DrawerHeader(
            child: Text('weedsycorn'),
          ),
          ListTile(
            title: const Text(ScaffoldTitles.chats),
            leading: const Icon(Icons.chat_bubble_outline_rounded),
            onTap: () => Navigator.pushNamed(context, RoutePaths.inbox),
          ),
          ListTile(
            title: const Text(ScaffoldTitles.linkedIn),
            leading: const Icon(Icons.info_outline_rounded),
            onTap: () => Navigator.pushNamed(context, RoutePaths.inbox),
          ),
        ],
      ),
    );
  }
}
