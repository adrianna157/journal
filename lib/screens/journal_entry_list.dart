import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:sqflite/sqflite.dart';
import 'package:intl/intl.dart';
import '../db/database_manager.dart';
import '../screens/journal_entry.dart';
import '../screens/new_entry.dart';
import '../widgets/welcome.dart';
import '../widgets/journal_scaffold.dart';
import '../models/journal.dart';
import '../models/journal_entry.dart';

class JournalEntryListScreen extends StatefulWidget {}

class _JournalEntryListScreeenState extends State<JournalEntryListScreen> {
  Journal journal;

  @override
  void initState() {
    super.initState();
    loadJournal();
  }

  void loadJournal() async {
    final databaseManager = DatabaseManager.getInstance();
    // List<Map> journalRecords = await databaseManager.db.rawQuery(
    //     'CREATE TABLE IF NOT EXISTS (id INTEGER PRIMARY KEY, title TEXT, body TEXT, rating INTEGER, date DATETIME)');
    List<Map<String, dynamic>> journalEntries = await databaseManager.journalEntries();
    // final journalEntries = journalRecords.map((record) {
    //   return JournalEntry(
    //       title: record['title'],
    //       body: record['body'],
    //       rating: record['rating'],
    //       dateTime: DateTime.parse(record['date']));
    // }).toList();
    print(journalEntries);
    setState(() {
      journal = Journal(entries: JournalEntries);
    });
  }

  @override
  Widget build(BuildContext context) {}
  Widget journalList(BuildContext context) {}
  FloatingActionButton addEntryFab(BuildContext context) {
    void displayJournalEntryForm(BuildContext context) {}
  }
}
