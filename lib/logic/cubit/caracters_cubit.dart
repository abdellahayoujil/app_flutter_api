import 'package:bloc/bloc.dart';
<<<<<<< HEAD
import 'package:meta/meta.dart';
=======
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:rickandmorty/data/model/Character.dart';
import 'package:rickandmorty/data/repo/Characters_repo.dart';
>>>>>>> ac4edbd (Complete code of Cubit and Dio)

part 'caracters_state.dart';

class CaractersCubit extends Cubit<CaractersState> {
<<<<<<< HEAD
  CaractersCubit() : super(CaractersInitial());
=======

  final CharactersRepo charactersrepo;
  late List<Character> characters;
  
  CaractersCubit(this.charactersrepo) : super(CaractersInitial());

  List<Character> getCharacters(){
    charactersrepo.getCharacters().then((Characters) {
      emit(CaractersLoaded(Characters));
      this.characters = Characters;
    });
    return characters;
  }
>>>>>>> ac4edbd (Complete code of Cubit and Dio)
}
