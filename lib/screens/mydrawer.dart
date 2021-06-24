import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class mydrawer extends StatelessWidget {
  final url =
      'https://th.bing.com/th/id/OIP.pkMMRX3FOkKUXFBhrWtFiwHaGL?w=206&h=180&c=7&o=5&pid=1.7';

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Colors.purple,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.purple),
            accountName: Text('Ravi'),
            accountEmail: Text("rraviggupta@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                  child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: url,
                height: 250.0,
               )),
            ),
            onDetailsPressed: () {},
          ),
          ListTile(
              title:
                  Text("Call History", style: TextStyle(color: Colors.white)),
              leading: Icon(
                Icons.call,
                color: Colors.white,
              )),
          ListTile(
              title: Text("Add Project & Sessios",
                  style: TextStyle(color: Colors.white)),
              leading: Icon(Icons.add_box_rounded, color: Colors.white)),
          ListTile(
            title: Text("Availabilty", style: TextStyle(color: Colors.white)),
            leading: Icon(
              Icons.save,
              color: Colors.white,
            ),
          ),
          ListTile(
              title: Text("Profile", style: TextStyle(color: Colors.white)),
              leading: Icon(
                Icons.account_box_sharp,
                color: Colors.white,
              )),
          ListTile(
            title: Text("My Earning", style: TextStyle(color: Colors.white)),
            leading: Icon(Icons.run_circle, color: Colors.white),
          ),
          ListTile(
              title: Text("Mail Box", style: TextStyle(color: Colors.white)),
              leading: Icon(
                Icons.mail,
                color: Colors.white,
              )),
          ListTile(
              title: Text("About Us", style: TextStyle(color: Colors.white)),
              leading: Icon(Icons.upgrade_rounded, color: Colors.white)),
        ],
      ),
    ));
  }
}
