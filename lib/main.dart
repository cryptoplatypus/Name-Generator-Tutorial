import 'package:flutter/material.dart';
import 'package:name_generator_tutorial/menu/tabs/home.dart';
import 'package:name_generator_tutorial/menu/tabs/main_menu.dart';
import 'package:name_generator_tutorial/menu/tabs/profile_details.dart';

void main() => runApp(NameGenApp());

class NameGenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => NameGenHome(),
        '/menu': (context) => MainMenu(),
        '/profile': (context) => ProfileDetails(),
      },
    );
  }
}
