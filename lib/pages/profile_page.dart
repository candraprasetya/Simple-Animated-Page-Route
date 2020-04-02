import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.blue,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        centerTitle: true,
        title: Text(
          'Profile Page',
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 100.0,
                backgroundImage: NetworkImage(
                    'https://drive.google.com/uc?id=1o3LW2JmBNybjlaYziH0F9OIo5brTSuK4'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 24.0),
              child: Text(
                'Tsamara Mantab',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xff2c3e50),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                    margin: new EdgeInsets.all(10.0),
                    decoration: new BoxDecoration(
                      color: Colors.blue.withOpacity(.8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(.2),
                          blurRadius:
                              20.0, // has the effect of softening the shadow
                          spreadRadius:
                              5.0, // has the effect of extending the shadow
                          offset: Offset(
                            6.0, // horizontal, move right 10
                            6.0, // vertical, move down 10
                          ),
                        )
                      ],
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('MANTAN',
                            style: TextStyle(
                                color: Colors.white.withOpacity(.8),
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          '12',
                          style: TextStyle(
                              color: Colors.white.withOpacity(.8),
                              fontSize: 36.0),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                    margin: new EdgeInsets.all(10.0),
                    decoration: new BoxDecoration(
                      color: Colors.green.withOpacity(.8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green.withOpacity(.2),
                          blurRadius:
                              20.0, // has the effect of softening the shadow
                          spreadRadius:
                              5.0, // has the effect of extending the shadow
                          offset: Offset(
                            6.0, // horizontal, move right 10
                            6.0, // vertical, move down 10
                          ),
                        )
                      ],
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('FOLLOWERS',
                            style: TextStyle(
                                color: Colors.white.withOpacity(.8),
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          '688',
                          style: TextStyle(
                              color: Colors.white.withOpacity(.8),
                              fontSize: 36.0),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                    margin: new EdgeInsets.all(10.0),
                    decoration: new BoxDecoration(
                      color: Colors.red.withOpacity(.8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.red.withOpacity(.2),
                          blurRadius:
                              20.0, // has the effect of softening the shadow
                          spreadRadius:
                              5.0, // has the effect of extending the shadow
                          offset: Offset(
                            6.0, // horizontal, move right 10
                            6.0, // vertical, move down 10
                          ),
                        )
                      ],
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('KEKASIH',
                            style: TextStyle(
                                color: Colors.white.withOpacity(.8),
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          '1',
                          
                          style: TextStyle(

                              color: Colors.white.withOpacity(.8),
                              fontSize: 36.0),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                                  child: MaterialButton(
                      height: 60.0,
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: Text('Check My Instagram',style: TextStyle(color: Colors.white),),
                      color: Colors.blueGrey,
                      minWidth: double.infinity,
                      onPressed: _launchURL),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

_launchURL() async {
  const url = 'https://instagram.com/tsamara.hanifa';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
