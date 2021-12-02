import 'package:bytebank/screens/transferencia/contact_form.dart';
import 'package:flutter/material.dart';

class Contactlist extends StatelessWidget {
  const Contactlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
              child: ListTile(
            title: Text(
              'Alex',
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
            subtitle: Text(
              '10000',
              style: TextStyle(fontSize: 16.0),
            ),
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => ContactForm(),
                ),
              )
              .then(
                (newContact) => debugPrint(newContact.toString()),
              );
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
