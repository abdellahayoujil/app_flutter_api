import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:rickandmorty/data/model/Character.dart';
import 'package:rickandmorty/data/repo/Characters_repo.dart';

part 'caracters_state.dart';

class CaractersCubit extends Cubit<CaractersState> {
  final CharactersRepo charactersRepo;

  CaractersCubit(this.charactersRepo) : super(CaractersInitial());

  List<Character> characters = [];

  void getCharacters() {
    charactersRepo.getCharacters().then((charactersList) {
      characters = charactersList;
      emit(CaractersLoaded(characters));
    }).catchError((error) {
      print("Error fetching characters: $error");
    });
  }
}
