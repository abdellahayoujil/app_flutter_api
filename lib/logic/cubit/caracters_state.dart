part of 'caracters_cubit.dart';

@immutable
sealed class CaractersState {}

final class CaractersInitial extends CaractersState {}

class CaractersLoaded extends CaractersState{
  final List<Character> characters;

  CaractersLoaded(this.characters);
}
