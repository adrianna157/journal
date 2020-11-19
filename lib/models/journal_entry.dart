import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class JournalEntry with ChangeNotifier {
  
  final String title;
  final String body;
  final int rating;
  final DateTime dateTime;

  JournalEntry({
    @required this.title,
    @required this.body,
    @required this.rating,
    @required this.dateTime,
  });
}
