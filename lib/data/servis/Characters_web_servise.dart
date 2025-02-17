import 'package:dio/dio.dart';
import 'package:rickandmorty/constans/strings.dart';

class CharactersWebService{
  
  late Dio dio;

  CharactersWebService() {
    BaseOptions options = new BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 20),
      receiveTimeout: Duration(seconds: 20),
      );
      
    dio = new Dio(options);
  }

  Future<List<dynamic>> getCharacters() async {
    try {
    Response response = await dio.get('character');
    print(response.data.toString());
    return response.data;
    } catch (error) {
      print(error.toString());
      return [];
    }

}
} 