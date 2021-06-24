import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class loginpage extends StatelessWidget {
  String imgurl =
      'https://th.bing.com/th/id/OIP.OnUw19rNju5xy5YuEK4uGQHaFK?w=244&h=180&c=7&o=5&pid=1.7';

  bool _secureText = true;
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        CachedNetworkImage(
          fit: BoxFit.cover,
          imageUrl: imgurl,
          height: 250.0,
          placeholder: (context, imgurl) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 26),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(hintText: 'Enter username'),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(hintText: "Enter Password"),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 40,
                width: 250,
                child: RaisedButton(
                  color: Colors.purple,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/otp');
                  },
                  child: Text("Login",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                width: 250,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/sign');
                  },
                  color: Colors.blue,
                  child: Text("Signup",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
