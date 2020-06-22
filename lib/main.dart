import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(Ashu());

class Ashu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add),
          backgroundColor: Colors.yellow,
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'curved_navigation_bar 0.3.1',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(
          color: Colors.pink,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('this is bottom navigation bar',
                  style: TextStyle(color: Colors.white))
            ],
          ),
        ),


        //dependencies:
        //curved_navigation_bar: ^0.3.1
        bottomNavigationBar: CurvedNavigationBar(
          color: Colors.grey,
          backgroundColor: Colors.pink,
          buttonBackgroundColor: Colors.white,
          height: 50,
          items: <Widget>[
            Icon(Icons.favorite, size: 20, color: Colors.black),
            Icon(Icons.account_circle, size: 20, color: Colors.black),
            Icon(Icons.menu, size: 20, color: Colors.black),
            Icon(Icons.search, size: 20, color: Colors.black),
            Icon(Icons.brightness_auto, size: 20, color: Colors.black)
          ],
          animationDuration: Duration(milliseconds: 300),
          animationCurve: Curves.bounceInOut,


          // app open karne pe center index hi select hoga
          index: 2,
          onTap: (index) {
            debugPrint('current index is $index');
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
