import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/basiclist.dart';

class backmenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: MyButton(),
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
      child: Text('Press'),
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String userName = "Damir";

    return Drawer(
      child: Container(
        color: Colors.green,
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50.0,
              width: 50,
              color: Colors.red,
            ),
            SizedBox(height: 8.0),
            Text(
              'ФИО пользователя:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              userName,
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
            SizedBox(height: 16.0),
            ListTile(
              leading: Icon(Icons.person, color: Colors.white),
              title: Text(
                'О себе',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
            SizedBox(height: 16.0),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text(
                'Настройки',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const basiclist()),
                );
              },
              child: Text('basiclist'),
            ),
          ],
        ),
      ),
    );
  }
}
