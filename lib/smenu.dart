import 'package:flutter/material.dart';

class smenu extends StatelessWidget {
  const smenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GraySquare(),
      ),
    );
  }
}

class GraySquare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      width: 200.0,
      height: 200.0,
      color: Colors.grey,
      child: Align(
        alignment: Alignment.topLeft,
        child: GreenSquare(),
      ),
    );
  }
}

class GreenSquare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      width: 168.0,
      height: 168.0,
      color: Colors.green,
      child: Align(
        alignment: Alignment.topLeft,
        child: BlueSquare(),
      ),
    );
  }
}

class BlueSquare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      width: 136.0,
      height: 136.0,
      color: Colors.blue,
    );
  }
}
