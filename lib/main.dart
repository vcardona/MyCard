import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber[400],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(
                      'https://cdn11.bigcommerce.com/s-so541o63fd/images/stencil/1024x1024/products/1004/881/robot_2.head__25462.1548270379.jpg?c=2'),
                ), //Circle Avatar
              ), //Center
              Text(
                'Victor Cardona',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
              ), //Text
              Text(
                'Mobile App Developer',
                style: TextStyle(
                    fontFamily: 'PalanquinDark',
                    color: Colors.black54,
                    letterSpacing: 2,
                    fontSize: 20.0,
                    fontWeight: FontWeight.normal),
              ), //Text
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              InkWell(
                onTap: () {
                  print("Se presiono el boton");
                  _launchURL();
                },
                child: Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.account_circle,
                    ),
                    title: Text(
                      'Linkedin Profile: victor-cardona',
                      style: TextStyle(color: Colors.black45),
                    ), //Text
                  ), //ListTile
                ),
              ), // Card
              InkWell(
                onTap: () {
                  print("Se presiono el boton");
                  _launchURLGit();
                },
                child: Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.developer_mode,
                    ),
                    title: Text(
                      'GitHub Profile: vcardona',
                      style: TextStyle(color: Colors.black45),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  print("Se presiono el boton");
                  _sendMail();
                },
                child: Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                    ),
                    title: Text(
                      'victorhugocardonagomez@gmail.com',
                      style: TextStyle(color: Colors.black45, fontSize: 13.0),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  print("Se presiono el boton");
                  _makeCall();
                },
                child: Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.call,
                    ),
                    title: Text(
                      '57+(1) 529013923',
                      style: TextStyle(color: Colors.black45, fontSize: 13.0),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  print("Se presiono el boton");
                  Share.share('check out my website https://example.com');
                  // _makeCall();
                },
                child: Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.share,
                    ),
                    title: Text(
                      'Share - Website Portfolio ',
                      style: TextStyle(color: Colors.black45, fontSize: 15.0),
                    ),
                  ),
                ),
              ),
            ], // Widget
          ), //Column
        ), //SafeArea
      ), //Scaffold
    ); //Material App
  }

  _launchURL() async {
    const url = "https://www.linkedin.com/in/victor-cardona/";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLGit() async {
    const url = "https://github.com/vcardona";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _sendMail() async {
    // Android and iOS
    const uri =
        'mailto:victorhugocardonagomez@gmail.com?subject=Victor_Cardona_CV&body=https://www.linkedin.com/in/victor-cardona/%20https://github.com/vcardona';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }

  _makeCall() async {
    // Android and iOS
    const uri = "tel:529013923";
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }
}
