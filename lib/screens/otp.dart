import 'dart:async';

import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class verfication extends StatefulWidget {
  @override
  _verficationState createState() => _verficationState();
}

class _verficationState extends State<verfication> {
  Timer _timer;
  int _start = 59;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double height = MediaQuery.of(context).size.height;

    return Material(
      color: Colors.brown[100],
      child: Stack(
        children: [
          Container(
            height: 300,
            width: width,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(top: 50, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, size: 30),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      "Verify number",
                      style: TextStyle(fontWeight: FontWeight.w400),
                      textScaleFactor: 2.0,
                    ),
                  ),
                  Text.rich(TextSpan(
                      style: TextStyle(fontWeight: FontWeight.w300),
                      text: "4 digit code sent to ",
                      children: [
                        TextSpan(
                            text: '+978 248 5409',
                            style: TextStyle(
                                color: Colors.green[500],
                                fontWeight: FontWeight.w500))
                      ])),
                  Container(
                    // color: Colors.yellow,
                    // height: 50,.
                    margin: EdgeInsets.only(top: 20, right: 10),
                    width: width,
                    child: OTPTextField(
                      length: 4,
                      fieldWidth: 70.0,
                      keyboardType: TextInputType.phone,
                      fieldStyle: FieldStyle.box,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: width,
                    height: 30,
                    // color: Colors.red,
                    margin: EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                            onTap: () {
                              startTimer();
                            },
                            child: Text.rich(
                                TextSpan(text: "Resend Otp: ", children: [
                              TextSpan(
                                  text: '$_start',
                                  style: TextStyle(color: Colors.red),
                                  children: [TextSpan(text: 's')])
                            ]))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 200),
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Container(
                    height: 40,
                    width: 300,
                    alignment: Alignment.center,
                    color: Colors.green,
                    child: Text(
                      "Verify",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              )),
          Padding(
              padding: EdgeInsets.only(top: 500, left: 10, right: 10),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/card');
                  },
                  child: Container(
                    height: 40,
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blue,
                    child: Text(
                      "CLICK ME",
                      style: TextStyle(color: Colors.white),
                    ),
                  )))
        ],
      ),
    );
  }
}
