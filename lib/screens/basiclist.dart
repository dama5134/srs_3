import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/checkbox.dart';

class basiclist extends StatelessWidget {
  const basiclist({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Basic List'),
        ),
        body: Row(
          children: <Widget>[
            Container(
              width: 60.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.map),
                  Icon(Icons.photo_album),
                  Icon(Icons.phone),
                  Icon(Icons.contacts),
                  Icon(Icons.settings),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Map'),
                  Text('Album'),
                  Text('Phone'),
                  Text('Contact'),
                  Text('Setting'),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const checkbox()),
                    );
                  },
                  child: Text('Press'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
