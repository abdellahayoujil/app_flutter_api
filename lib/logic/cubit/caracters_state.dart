part of 'caracters_cubit.dart';

@immutable
sealed class CaractersState {}

final class CaractersInitial extends CaractersState {}
<<<<<<< HEAD
=======

class CaractersLoaded extends CaractersState{
  final List<Character> characters;

  CaractersLoaded(this.characters);
}
>>>>>>> ac4edbd (Complete code of Cubit and Dio)
