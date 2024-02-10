import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/gender.dart';

class checkbox extends StatelessWidget {
  const checkbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HobbySelectionScreen(),
    );
  }
}

class HobbySelectionScreen extends StatefulWidget {
  @override
  _HobbySelectionScreenState createState() => _HobbySelectionScreenState();
}

class _HobbySelectionScreenState extends State<HobbySelectionScreen> {
  List<String> selectedHobbies = [];

  void _toggleHobby(String hobby) {
    setState(() {
      if (selectedHobbies.contains(hobby)) {
        selectedHobbies.remove(hobby);
      } else {
        selectedHobbies.add(hobby);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kindacode.com'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Choose your hobbies:',
              style: TextStyle(fontSize: 18.0),
            ),
            CheckboxListTile(
              title: Text('Football'),
              value: selectedHobbies.contains('Football'),
              onChanged: (_) => _toggleHobby('Football'),
            ),
            CheckboxListTile(
              title: Text('Baseball'),
              value: selectedHobbies.contains('Baseball'),
              onChanged: (_) => _toggleHobby('Baseball'),
            ),
            CheckboxListTile(
              title: Text('Video Games'),
              value: selectedHobbies.contains('Video Games'),
              onChanged: (_) => _toggleHobby('Video Games'),
            ),
            CheckboxListTile(
              title: Text('Reading Books'),
              value: selectedHobbies.contains('Reading Books'),
              onChanged: (_) => _toggleHobby('Reading Books'),
            ),
            CheckboxListTile(
              title: Text('Surfing The Internet'),
              value: selectedHobbies.contains('Surfing The Internet'),
              onChanged: (_) => _toggleHobby('Surfing The Internet'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Selected Hobbies: ${selectedHobbies.join(", ")}',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const gender()),
                );
              },
              child: Text('Press'),
            ),
          ],
        ),
      ),
    );
  }
}
