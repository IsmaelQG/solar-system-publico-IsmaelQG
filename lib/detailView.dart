import 'package:flutter/material.dart';
import 'package:solar_system/planet.dart';

import 'main.dart';

class DetailView extends StatelessWidget {

  Planet planet;

  DetailView(this.planet);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'details',
      home: Scaffold(
        backgroundColor: Colors.white12,
        appBar: AppBar(
          backgroundColor: planet.color,
          leading: FlatButton(
            child: Icon(Icons.keyboard_arrow_left,
              color: Colors.white,
            ),
            onPressed: (){
              Navigator.pop(context);
              },
          ),
          title: Text(planet.name),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/${planet.image}',
                  height: 200.0,
                  width: 200.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    planet.data,
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
