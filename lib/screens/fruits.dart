import 'package:flutter/material.dart';

class fruits extends StatefulWidget {
  @override
  _fruitsState createState() => _fruitsState();
}

class _fruitsState extends State<fruits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("FRUITS"),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: false,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            height: MediaQuery.of(context).size.height * 2 + 200,
            width: MediaQuery.of(context).size.width,
            // color: Colors.yellow,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    firstcolumn(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWtCprAuYoo6RgOFps7_gFPa8-X27-kTFDfw&usqp=CAU",
                        '',
                        'status',
                        true),
                    firstcolumn(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWtCprAuYoo6RgOFps7_gFPa8-X27-kTFDfw&usqp=CAU",
                        '',
                        'status',
                        false),
                    firstcolumn(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSh-oL3W452hnk8V8NmPrqNkCe1pzma8jqyDw&usqp=CAU",
                        '',
                        'status',
                        true),
                    firstcolumn(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2A9Pch7uvfGdKgfIznLJs2dqlyZTVij4jVw&usqp=CAU",
                        '',
                        'status',
                        false),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      secondcolumn(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT68b0O5wgNnMvg2hrPVjD4cRADRiFNcmXHvQ&usqp=CAU',
                          'title',
                          'status',
                          false),
                      secondcolumn(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2A9Pch7uvfGdKgfIznLJs2dqlyZTVij4jVw&usqp=CAU',
                          'title',
                          'status',
                          true),
                      secondcolumn(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSh-oL3W452hnk8V8NmPrqNkCe1pzma8jqyDw&usqp=CAU',
                          'title',
                          'status',
                          false),
                      secondcolumn(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWtCprAuYoo6RgOFps7_gFPa8-X27-kTFDfw&usqp=CAU',
                          'title',
                          'status',
                          true),
                      secondcolumn(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmTR7fZCQvAKLdcOmFNc75mMl_3kp1ZiNjZg&usqp=CAU',
                          'title',
                          'status',
                          false),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget firstcolumn(String img, String title, String status, bool fav) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          height: 150,
          width: MediaQuery.of(context).size.width / 2 - 15,
          decoration: BoxDecoration(
              // border: Border.all(color: Colors.yellow, width: 5),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Colors.cyan,
              image:
                  DecorationImage(fit: BoxFit.fill, image: NetworkImage(img))),
          child: Container(
              // margin: EdgeInsets.only(bottom: 90, left: 100),
              alignment: Alignment.topRight,
              child: fav
                  ? Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : Icon(Icons.favorite_border)),
        ),
        Container(
          height: 50,
          padding: EdgeInsets.only(top: 10),
          width: MediaQuery.of(context).size.width / 2 - 25,
          // color: Colors.red,
          child: Column(
            children: [
              Text(
                "Freeky Bananas",
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
              Text("Rs60 each",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12))
            ],
          ),
        ),
      ],
    );
  }

  Widget secondcolumn(String img, String title, String status, bool fav1) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          height: 150,
          width: MediaQuery.of(context).size.width / 2 - 15,
          decoration: BoxDecoration(
            // border: Border.all(color: Colors.yellow, width: 5),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Colors.cyan,
            image: DecorationImage(fit: BoxFit.fill, image: NetworkImage(img)),
          ),
          child: Container(
              // margin: EdgeInsets.only(bottom: 90, left: 100),
              alignment: Alignment.topRight,
              child: fav1
                  ? Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : Icon(Icons.favorite_border)),
        ),
        Container(
          height: 50,
          padding: EdgeInsets.only(top: 10),
          width: MediaQuery.of(context).size.width / 2 - 25,
          // color: Colors.red,
          child: Column(
            children: [
              Text(
                "Freeky Bananas",
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
              Text("Rs60 each",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12))
            ],
          ),
        ),
      ],
    );
  }
}
