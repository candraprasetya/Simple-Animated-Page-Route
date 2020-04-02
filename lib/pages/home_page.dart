import 'package:animated_page_route/pages/profile_page.dart';
import 'package:animated_page_route/utils/animated_page_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          brightness: Brightness.light,
          centerTitle: true,
          title: Text(
            'HomePage',
            style: TextStyle(color: Colors.blue),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(40.0),
        alignment: Alignment.center,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          onPressed: () {
            Navigator.of(context).push(AnimatedPageRoute(widget: ProfilePage()));
          },
          color: Colors.blue.withOpacity(.8),
          elevation: 0.0,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
