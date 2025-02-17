import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:rickandmorty/data/model/Character.dart';
import 'package:rickandmorty/data/repo/Characters_repo.dart';
part 'caracters_state.dart';

class CaractersCubit extends Cubit<CaractersState> {
  final CharactersRepo charactersRepo;
  late List<Character> characters;

  CaractersCubit(this.charactersRepo)
   : super(CaractersInitial());

  List<Character> getCharacters() {
    charactersRepo.getCharacters().then((characters) {
      emit(CaractersLoaded(characters));
      this.characters = characters;
    });
      return characters;
    }
  }

