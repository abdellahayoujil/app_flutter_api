import 'package:rickandmorty/data/model/Character.dart';
import 'package:rickandmorty/data/servis/Characters_web_servise.dart';

class CharactersRepo {

  final CharactersWebService charactersWebService;

  CharactersRepo(this.charactersWebService);

   Future<List<Character>> getCharacters() async {
      final characters = await charactersWebService.getCharacters();
      return characters.map((character) => Character.fromJson(character)).toList();
}
}