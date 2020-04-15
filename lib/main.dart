import 'package:flutter/material.dart';
import 'package:flutter_expansion_view/criteria.dart';
import 'package:flutter_expansion_view/expansionPanel.dart';
import 'package:flutter_expansion_view/expansionTile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Expansion View',
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      // backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Expansiontile()));
                    },
                    child: Text(
                      'ExpansionTile'
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Criterias()));
                    },
                    child: Text(
                      'ExpansionPanel'
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}