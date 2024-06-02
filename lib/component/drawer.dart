import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10, //shadow
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(color: Colors.green[100]),
              accountName: Text(
                "Nikita",
                style: TextStyle(color: Colors.purple),
              ),
              accountEmail: Text(
                "Nikita22@gmail.com",
                style: TextStyle(color: Colors.purple),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://media.istockphoto.com/id/1303539316/photo/one-beautiful-woman-looking-at-the-camera-in-profile.jpg?s=612x612&w=is&k=20&c=ZbVX_WyZuH7KswhOYme3bB3YsqDU_ID7DqsIr5T3GX4="),
              ),
              // currentAccountPicture: Image.network(
              //     "https://media.istockphoto.com/id/1303539316/photo/one-beautiful-woman-looking-at-the-camera-in-profile.jpg?s=612x612&w=is&k=20&c=ZbVX_WyZuH7KswhOYme3bB3YsqDU_ID7DqsIr5T3GX4="),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home_outlined,
              size: 30,
              // color: Colors.white,
            ),
            title: Text(
              "Home",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.person_outline,
              size: 30,
              // color: Colors.white,
            ),
            title: Text(
              "Profile",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.email_outlined,
              size: 30,
              // color: Colors.white,
            ),
            title: Text(
              "Email",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
