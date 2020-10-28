import 'package:flutter/material.dart';
import 'package:myapp/screens/details.dart';
// import 'package:myapp/main.dart';

class VisitCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text('Ma carte de visite'),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage('assets/profil.png'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Card(
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Kamel YAKHLEF',
                      style: TextStyle(
                          fontFamily: 'JosefineSans',
                          fontSize: 30.0,
                          height: 1.5,
                          color: Colors.white),
                    ),
                  ),
                ),
                Card(
                  color: Colors.transparent,
                  margin: EdgeInsets.only(top: 30.0, bottom: 15.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Développeur web et web mobile, en alternance License CDA',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'JosefineSans',
                          fontSize: 20.0,
                          height: 1.5,
                          color: Colors.white),
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Details();
                    }));
                  },
                  child: Text('En savoir plus',
                      style: TextStyle(
                          fontFamily: 'JosefineSans', color: Colors.white70)),
                  color: Colors.blueGrey,
                )
              ],
            ),
          ),
        ));
  }
}
