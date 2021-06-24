import 'package:flutter/material.dart';
import 'package:test1/screens/fruits.dart';

class account extends StatefulWidget {
  @override
  _accountState createState() => _accountState();
}

class _accountState extends State<account> {
  GlobalKey<State> formkey = GlobalKey();

  bool _secureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 50, left: 10.0, right: 10.0),
            child: Column(
              children: [
                Text(
                  "Hey young innovator,",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
                Text(
                  "Let's create an account for you!",
                  style: TextStyle(color: Colors.black),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    key: formkey,
                    autovalidate: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        filled: true,
                        fillColor: Colors.white70,
                        labelText: "Full Name",
                        labelStyle: TextStyle(fontSize: 18)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        filled: true,
                        fillColor: Colors.white70,
                        labelText: "Last Name",
                        labelStyle: TextStyle(fontSize: 18)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        filled: true,
                        fillColor: Colors.white70,
                        labelText: "Email Address",
                        labelStyle: TextStyle(fontSize: 18)),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "required";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    // obscureText: true,
                    keyboardType: TextInputType.number,
                    // keyboardAppearance: Brightness.light,
                    decoration: InputDecoration(
                        // border: OutlineInputBorder(),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: Colors.white70,
                        labelText: "Password",
                        labelStyle: TextStyle(fontSize: 18),
                        contentPadding: EdgeInsets.only(left: 20.0),
                        suffixIcon: IconButton(
                          icon: Icon(_secureText
                              ? Icons.remove_red_eye
                              : Icons.security),
                          onPressed: () {
                            setState(() {
                              _secureText = !_secureText;
                            });
                          },
                        )),
                    obscureText: _secureText,
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.only(top: 20),
                //   child: Container(
                //     alignment: Alignment.topLeft,
                //     height: 50.0,
                //     child: RaisedButton(
                //       onPressed: () {},
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(30.0)),
                //       child: Text("09/05/2021"),
                //     ),
                //   ),
                // ),
                // Container(
                //     height: 50.0,
                //     child: RaisedButton(
                //       onPressed: () {},
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(30.0)),
                //       child: ListTile(
                //         title: Text("Gender"),
                //         trailing: Icon(
                //           Icons.keyboard_arrow_down,
                //           color: Colors.red,
                //           size: 20.0,
                //         ),
                //       ),
                //     )),
                Padding(
                    padding: EdgeInsets.only(top: 80.0),
                    child: Container(
                        width: 350.0,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => fruits()));
                          },
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Text(
                            "CLICK ME",
                            style: TextStyle(fontSize: 17.0),
                          ),
                          color: Colors.white,
                        ))),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                      "*By continuing, you agree to ITC's Terms & Conditions and Privacy policy",
                      style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
        ));
  }
}
