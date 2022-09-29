import 'package:flutter/material.dart';
import 'package:movie_stream_app/pages/detail_movie_page.dart';
import 'package:movie_stream_app/pages/main_menu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => MenuPage(),
        '/detail-movie': (context) => DetailMoviePage(),
      },
    );
  }
}
