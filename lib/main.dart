import 'package:flutter/material.dart';
import 'package:rickandmorty/router.dart';

void main() {
  runApp(MyApp(router: RouterApp(),));
}

class MyApp extends StatelessWidget {

  final RouterApp router;

  const MyApp({
    Key? key, required this.router, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generateRoute,
    );
  }
}

