import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test1/screens/mydrawer.dart';

class card extends StatefulWidget {
  @override
  _cardState createState() => _cardState();
}

class _cardState extends State<card> with SingleTickerProviderStateMixin {
  Animation animation, delayedAnimation, muchdelayedAnimation, childAnimation;
  AnimationController animationController;

  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    super.initState();

    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));

    delayedAnimation = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));

    muchdelayedAnimation = Tween(begin: -1, end: 0.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeInCirc));

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white10,
              title: FlutterLogo(
                size: 20.0,
              ),
              centerTitle: true,
              actions: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/setting');
                  },
                  child: Icon(Icons.settings),
                )
              ],
            ),
            drawer: mydrawer(),
            body: ListView(
              children: [
                Stack(
                  children: [
                    Transform(
                        transform: Matrix4.translationValues(
                            animation.value * width, 0.0, 0.0),
                        child: SizedBox(
                          height: 50,
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "Get Coaching",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),
                        )),
                    Transform(
                        transform: Matrix4.translationValues(
                            delayedAnimation.value * width, 0.0, 0.0),
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black12,
                              boxShadow: [
                                BoxShadow(color: Colors.white, blurRadius: 2.0)
                              ]),
                          margin:
                              EdgeInsets.only(left: 20, top: 90, right: 20.0),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                      padding:
                                          EdgeInsets.only(left: 10, bottom: 10),
                                      child: Text(
                                        "YOU HAVE",
                                        style: TextStyle(fontSize: 10),
                                      )),
                                  Container(
                                      padding:
                                          EdgeInsets.only(top: 15, left: 10),
                                      child: Text("206",
                                          style: TextStyle(fontSize: 25))),
                                ],
                              ),
                              SizedBox(
                                  width: 230,
                                  child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.greenAccent[100]
                                              .withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      margin: EdgeInsets.only(left: 80),
                                      child: GestureDetector(
                                          onTap: () {
                                            print("ClickedMe");
                                          },
                                          child: Center(
                                              child: TextButton(
                                                  onPressed: () {},
                                                  child: Text("Buy More",
                                                      style: TextStyle(
                                                          color: Colors
                                                              .green)))))))
                            ],
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 60,
                  child: Container(
                      margin: EdgeInsets.only(top: 0, left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("My COACHES"),
                          Text(
                            "MY Points",
                            style: TextStyle(color: Colors.green),
                          )
                        ],
                      )),
                ),
                Transform(
                    transform: Matrix4.translationValues(
                        muchdelayedAnimation.value * width, 0.0, 0.0),
                    child: SizedBox(
                      child: GridView.count(
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        primary: false,
                        crossAxisSpacing: 3,
                        children: [
                          _data('Rouslie', 'awre', '2'),
                          _data('charlie', 'innocent', '2'),
                          _data('Rouslie', 'innocent', '2'),
                          _data('Charlie', 'awre', '2'),
                          _data('Rouslie', 'innocent', '2'),
                          _data('Charlie', 'awre', '2'),
                        ],
                      ),
                    ))
              ],
            ),
          );
        });
  }

  Widget _data(String name, String status, String index) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            child: Stack(
              children: [
                SizedBox(
                    height: 60,
                    child: Container(
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: CircleAvatar(
                        child: ClipOval(
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl:
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtHKQxjY1rDnpvPoHxlWPfRdaKBHnrL0mQ8g&usqp=CAU",
                            height: 100.0,
                            width: 100.0,
                            placeholder: (context, url) =>
                                CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                        ),
                      ),
                    )),
                SizedBox(
                  child: Container(
                      margin: EdgeInsets.only(left: 0, top: 70),
                      child: Text(name,
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18))),
                ),
                SizedBox(
                  child: Container(
                      margin: EdgeInsets.only(left: 0, top: 90),
                      child: Text(status)),
                ),
              ],
            ),
          ),
          Container(
            width: 100,
            height: 40,
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(20)),
                color:
                    status == 'awre' ? Colors.lightGreenAccent : Colors.grey),
            child: Center(
              child: Text("Request"),
            ),
          ),
        ],
      ),
      elevation: status == 'awre' ? 100 : 0,
    );
  }
}
