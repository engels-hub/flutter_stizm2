import 'package:flutter/material.dart';

class Students extends StatefulWidget {
  const Students({Key? key}) : super(key: key);

  @override
  _StudentsState createState() => _StudentsState();
}

class _StudentsState extends State<Students> {
  @override

  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 36.0,
          title: Container(
            child: Row(
              children: [

                Image.asset(
                  'assets/ic_white_logo.png',
                  height: 32.0,
                  color: Color.fromARGB(255, 0, 0, 0),
                  isAntiAlias: true,
                  fit: BoxFit.scaleDown,
                ),



                IconButton(
                    onPressed: (){
                      debugPrint("hw!");
                    },
                    icon: const Icon(Icons.palette, size: 28.0, color: Colors.black45,)
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            margin: const EdgeInsets.only(left: 25.0, right: 20.0),
          ),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                child: Text(
                    "šodiena",
                    style: TextStyle(color: Colors.black87)
                ),
              ),
              Tab(
                child: Text(
                    "rītdiena",
                    style: TextStyle(color: Colors.black87),
                ),
              ),

            ],
          ),
          backgroundColor: Colors.white,
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text("It's cloudy here"),
            ),
            Center(
              child: Text("It's rainy here"),
            ),

          ],
        ),
      ),
    );

  }


}
