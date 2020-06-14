import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Herald'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Depart Station',
              ),
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Arrive Station',
              ),
            ),
            SizedBox(height: 30),
            RaisedButton(
              child: Text('Set Date'),
              onPressed: () => {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2021, 10, 10)
                )
              }
            ),
            SizedBox(height: 10),
            RaisedButton(
              child: Text('Find'),
              onPressed: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
