import 'package:flutter/material.dart';
import 'package:flutter_application_2/menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Moon'),
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              'Hello flutter from metanit.com',
              style: TextStyle(fontSize: 24.0),
            ),
          ),
          SizedBox(height: 400.0),
          Center(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Hello Flutter',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ),
          SizedBox(height: 400.0),
          Center(
            child: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Текст слева по центру',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ),
          SizedBox(height: 400.0),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const menu()),
                      );
                    },
                    child: const Text('Press')),
                SizedBox(height: 20.0),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const menu()),
                      );
                    },
                    child: const Text('Press'))
              ],
            ),
          ),
          SizedBox(height: 400.0),
        ],
      ),
    );
  }
}
