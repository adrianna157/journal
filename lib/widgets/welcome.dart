import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static const route = 'welcome_screen';
  @override
  _State createState() => _State();
}

class _State extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome',
        theme: ThemeData.light(),
        //routes : routes
        home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Welcome')),
            actions: <Widget>[
              Padding(
                  padding: EdgeInsets.all(padding(context)),
                  child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.settings,
                        size: 26.0,
                      )))
            ],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Icon(
                Icons.book,
                size: 90,
              ),
              Text('Journal'),

              ],
          )
          
          ),
          floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
           
         )
        );
  }

 double padding(BuildContext context) {
      if (MediaQuery.of(context).orientation == Orientation.landscape) {
        return MediaQuery.of(context).size.width * 0;
      } else {
        return MediaQuery.of(context).size.width * 0.01;
      }
    }
  }


