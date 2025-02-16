import 'package:flutter/material.dart';
import 'package:rickandmorty/constans/strings.dart';
import 'package:rickandmorty/presentation/screens/caracters_screen.dart';
import 'package:rickandmorty/presentation/screens/character_details.dart';

class RouterApp {
  Route? generateRoute(RouteSettings settings) {  
    switch (settings.name) {
      case charactersscreen:
        return MaterialPageRoute(builder: (_) => const CaractersScreen());
      case charactersdetailsScreen:
        return MaterialPageRoute(builder: (_) => const Character_Details_Screen());
      default:
        return null; 
    }
  }
}
