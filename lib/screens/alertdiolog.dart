import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/menu.dart';

class alertdiolg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              _showAlertDialog(context);
            },
            child: Text('Press'),
          ),
        ),
      ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            children: [
              Icon(Icons.album,
                  size: 60, color: Color.fromARGB(173, 183, 0, 0)),
              SizedBox(width: 8),
              Text(
                'Sonu Nigam',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(173, 183, 0, 0)),
              ),
            ],
          ),
          content: Text(
            'Best Of Sonu Nigam Music',
            style:
                TextStyle(fontSize: 16, color: Color.fromARGB(173, 183, 0, 0)),
          ),
          backgroundColor: Colors.red,
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => backmenu()),
                );
                ;
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: Text(
                'Play',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            )
          ],
        );
      },
    );
  }
}
