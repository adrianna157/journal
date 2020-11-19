import 'package:flutter/material.dart';
import 'dart:async';
// import 'dropdown_rating_form_field.dart';
import '../db/journal_entry_dto.dart';
import '../db/database_manager.dart';
import 'package:path/path.dart';


class JournalEntryForm extends StatefulWidget {
  final formKey = GlobalKey<FormState>();
  final journalEntryValues = JournalEntryDTO();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {}

  Widget formContent(BuildContext context){}

  Widget titleTextField(){}

  Widget bodyTextField(){}

  Widget ratingDropdown(){}

  Widget buttons(BuildContext context) {}

  Widget cancelButton(BuildContext context) {}

  Widget saveButton(BuildContext context) {
    return RaisedButton(
        child: Text('Save'),
        onPressed: () async {
          if (formKey.currentState.validate()) {
            formKey.currentState.save();
            addDateToJournalEntryValues();
            // await deleteDatabase('journal.db');
            final databaseManager = DatabaseManager.getInstance();
            databaseManager.saveJournalEntry(dto: journalEntryValues);
            Navigator.of(context).pop();
          }
        });
  }

  void addDateToJournalEntryValues() {
    journalEntryValues.dateTime = DateTime.now();
  }
}
