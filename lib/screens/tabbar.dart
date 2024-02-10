import 'package:flutter/material.dart';

class tabbar extends StatelessWidget {
  const tabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Flutter TabBar Example'),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.directions_transit),
                  text: 'Transit',
                ),
                Tab(
                  icon: Icon(Icons.directions_bike),
                  text: 'Bike',
                ),
                Tab(
                  icon: Icon(Icons.directions_boat),
                  text: 'Boat',
                ),
                Tab(
                  icon: Icon(Icons.directions_railway),
                  text: 'Railway',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text('1'),
              ),
              Center(
                child: Text('2'),
              ),
              Center(
                child: Text('3'),
              ),
              Center(
                child: Text('4'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
