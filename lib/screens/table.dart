import 'package:flutter/material.dart';

class table extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TableD(),
    );
  }
}

class TableD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          DataTable(
            columns: <DataColumn>[
              DataColumn(
                label: Text('Имя'),
              ),
              DataColumn(
                label: Text('Возраст'),
              ),
              DataColumn(
                label: Text('Город'),
              ),
            ],
            rows: <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('John')),
                  DataCell(Text('30')),
                  DataCell(Text('New York')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Alice')),
                  DataCell(Text('25')),
                  DataCell(Text('Los Angeles')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Bob')),
                  DataCell(Text('35')),
                  DataCell(Text('Chicago')),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
