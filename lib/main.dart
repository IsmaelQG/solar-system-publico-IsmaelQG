import 'package:flutter/material.dart';
import 'package:solar_system/planet.dart';
import 'package:solar_system/planetCreator.dart';

import 'detailView.dart';

void main() {
  runApp(SolarSystem());
}

class SolarSystem extends StatelessWidget {
  PlanetCreator planetCreator = PlanetCreator();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings){
        if(settings.name == '/'){
          return MaterialPageRoute(builder: (context) => SolarSystem());
        }
        var uri = Uri.parse(settings.name);
        if(uri.pathSegments.length == 2 && uri.pathSegments.first == 'detail'){
          int index = int.parse(uri.pathSegments.last);
          return MaterialPageRoute(builder: (context) => DetailView(planetCreator.getPlanetByIndex(index)));
        }
        return MaterialPageRoute(builder: (context) => null);
      },
      title: 'Solar System',
      home: Scaffold(
        backgroundColor: Colors.white12,
        appBar: AppBar(
          backgroundColor: Colors.white70,
          title: Center(child: Text(
            "Solar System",
            style: TextStyle(
              color: Colors.black
            ),
          ),
          ),
        ),
        body: planetCreator.getPlanets(),
      ),
    );
  }
}




