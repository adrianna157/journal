import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app.dart';
import 'db/database_manager.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.portraitUp
  ]);
  Directory documentsDir = await getApplicationDocumentsDirectory();
  String documentsPath = documentsDir.path;

  final File file = File('$documentsPath/example.txt');
  await file.writeAsString('Important Data Here');

  //await DatabaseManager.initialize();
  runApp(App(preferences: await SharedPreferences.getInstance()));
}
