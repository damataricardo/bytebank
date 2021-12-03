import 'dart:ffi';

import 'package:bytebank/database/app_database.dart';
import 'package:bytebank/screens/transferencia/contact_form.dart';
import 'package:bytebank/screens/transferencia/contacts_list.dart';
import 'package:bytebank/screens/transferencia/dashboard.dart';
import 'package:bytebank/screens/transferencia/lista.dart';
import 'package:flutter/material.dart';

import 'models/contact.dart';

void main() {
  runApp(BytebankApp());
  save(Contact(0,'alex', 1000)).then((id){
    save(Contact(0, 'ricardo', 10000));
       findAll().then((contacts) => debugPrint(contacts.toString()));
  });
}

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.green,
          ).copyWith(
            secondary: Colors.blueAccent[700],
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blueAccent[700]))),
      home: Dashboard(),
    );
  }
}



