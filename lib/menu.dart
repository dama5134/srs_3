import 'package:flutter/material.dart';
import 'package:flutter_application_2/smenu.dart';

class menu extends StatelessWidget {
  const menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.green,
      body: ListView(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: RichText(
              textDirection: TextDirection.ltr,
              text: TextSpan(
                style: TextStyle(fontSize: 20),
                children: <TextSpan>[
                  TextSpan(
                      text: "Tom    ",
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.normal)),
                  TextSpan(
                      text: "Bob    ",
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.normal)),
                  TextSpan(
                      text: "Sam    ",
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.normal)),
                  TextSpan(
                      text: "Alice",
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.normal)),
                ],
              ),
            ),
          ),
          SizedBox(height: 400.0),
          Center(
            child: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Вот мысль,которой я весь предан, Итог всег, что ум скопил. Лишь тот, кем бой за жизнь изведан, Жизнь и свободу заслужил',
                style: TextStyle(fontSize: 24.0),
                textDirection: TextDirection.ltr,
              ),
            ),
          ),
          SizedBox(height: 400.0),
          Center(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Через несколько дней после отъезда Анатолия, Пьер получил записку от княза Андрея, извещавшего его о своем визите и просившего Пьера заехать к нему',
                style: TextStyle(fontSize: 24.0),
                textDirection: TextDirection.ltr,
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
                        MaterialPageRoute(builder: (context) => const smenu()),
                      );
                    },
                    child: const Text('Press'))
              ],
            ),
          ),
          const SizedBox(height: 400),
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/image1.jpg',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 400),
          Container(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/image2.jpg',
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 400.0,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Введите свой логин:',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Введите логин',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
