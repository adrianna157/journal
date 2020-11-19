import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:english_words/english_words.dart';
import './widgets/welcome.dart';

class App extends StatefulWidget {
  // static final routes = {
  //   {
  //     '/': (context) => Alpha(),
  //     'beta': (context) => Beta(),
  //     'donut': (context) => Donut()
  //   }
  // };

  final SharedPreferences preferences;
  App({Key key, @required this.preferences}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  static const FAVORITE_THING_KEY = 'favoriteThing';

  String get favoriteThing =>
      widget.preferences.getString(FAVORITE_THING_KEY) ?? 'DEFAULT';

  void initState() {
    super.initState();
    // favoriteThing = 'Loading...';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Example',
        theme: ThemeData.light(),
        //routes : routes
        home: WelcomeScreen()
        );
    // Scaffold(
    //     appBar: AppBar(title: Text('Journal Entry')),
    //     body: Center(
    //         child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //           favoriteThing == null
    //               ? CircularProgressIndicator()
    //               : Text(favoriteThing,
    //                   style: Theme.of(context)
    //                       .textTheme
    //                       .headline2
    //                       .copyWith(color: Colors.black)),
    //           SizedBox(height: 20),
    //           RaisedButton(
    //               child: Text('Pick New Favorite Thing'),
    //               onPressed: pickNewFavoriteThing),
    //         ]))));
  }

  void pickNewFavoriteThing() {
    setState(() {
      widget.preferences.setString(
          'FAVORITE_THING_KEY', generateWordPairs().take(1).first.join(''));
    });
  }
}
