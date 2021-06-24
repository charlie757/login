import 'package:flutter/material.dart';

class settingpage extends StatefulWidget {
  @override
  _settingpageState createState() => _settingpageState();
}

class _settingpageState extends State<settingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("SETTING"),
          actions: [
            Icon(Icons.notifications_none),
          ],
        ),
        body: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                          color: Colors.white10,
                          child: ListTile(
                            horizontalTitleGap: 0.0,
                            leading: Icon(Icons.account_circle_outlined,
                                color: Colors.white24),
                            title: Text("Account",
                                style: TextStyle(color: Colors.white)),
                          )),
                      Container(
                        color: Colors.white10,
                        padding: EdgeInsets.only(right: 15.0),
                        child: Column(
                          children: [
                            ListTile(
                              trailing:
                                  Icon(Icons.arrow_right, color: Colors.white),
                              title: Text("Edit Account",
                                  style: TextStyle(color: Colors.white)),
                            ),
                            ListTile(
                              trailing:
                                  Icon(Icons.arrow_right, color: Colors.white),
                              title: Text("Edit Profile",
                                  style: TextStyle(color: Colors.white)),
                            ),
                            ListTile(
                              trailing:
                                  Icon(Icons.arrow_right, color: Colors.white),
                              title: Text("Changed Password",
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Container(
                            color: Colors.white10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListTile(
                                    horizontalTitleGap: 0.0,
                                    title: Text("Notifications",
                                        style: TextStyle(color: Colors.white)),
                                    leading: Icon(Icons.notifications_none,
                                        color: Colors.white)),
                                ListTile(
                                  title: Text(
                                    "Notification",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    "App Notification",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Container(
                            color: Colors.white10,
                            child: Column(
                              children: [
                                ListTile(
                                    horizontalTitleGap: 0.0,
                                    title: Text("More",
                                        style: TextStyle(color: Colors.white)),
                                    leading: Icon(Icons.add_box_sharp,
                                        color: Colors.white)),
                                ListTile(
                                  trailing: Icon(Icons.arrow_right,
                                      color: Colors.white),
                                  title: Text(
                                    "Link-1",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    "App Notification",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ))
          ],
        ));
  }
}
