
import 'package:flutter/material.dart';

import 'planet.dart';

class PlanetCreator{

  final Map<String, String> planets = {
    'earth': 'earth.png',
    'venus': 'venus.png',
    'mercury' : 'mercury.png',
    'jupiter' : 'jupiter.png',
    'mars' : 'mars.png',
    'moon' : 'moon.png',
    'neptune' : 'neptune.png',
    'pluto' : 'pluto.png',
    'saturn' : 'saturn.png',
    'sun' : 'sun.png',
    'uranus' : 'uranus.png',
  };

  List<Planet> listPlanets = [
    Planet(Colors.lightBlue, 'earth.png', 'Earth', 149.5, "Earth—our home planet—is the only place we know of so far that’s inhabited by living things. It's also the only planet in our solar system with liquid water on the surface."),
    Planet(Colors.orangeAccent, 'venus.png', 'Venus', 108.2, "Venus spins slowly in the opposite direction from most planets. A thick atmosphere traps heat in a runaway greenhouse effect, making it the hottest planet in our solar system."),
    Planet(Colors.white54, 'mercury.png', 'Mercury', 149.5, "Mercury—the smallest planet in our solar system and closest to the Sun—is only slightly larger than Earth's Moon. Mercury is the fastest planet, zipping around the Sun every 88 Earth days."),
  ];

  Planet getPlanetByIndex(int index){
    return listPlanets[index];
  }

  Widget getPlanets(){
    return ListView.separated(
        itemCount: listPlanets.length,
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemBuilder: (context, index){
          return ListTile(
            tileColor: Colors.white24,
            leading: Image.asset("assets/images/${listPlanets[index].image}"),
            title: Text(
              listPlanets[index].name,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              "${listPlanets[index].distance} Millones Km",
              style: TextStyle(
                color: Colors.white54,
              ),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            trailing: Icon(
              Icons.arrow_forward_ios_sharp,
              size: 15.0,
            ),
            onTap: (){
              Navigator.pushNamed(
                  context,
                  '/detail/$index',
              );
              },
          );
        });

  }

}