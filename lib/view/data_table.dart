import 'package:flutter/material.dart';

class DataTableExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Table Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: DataTable(
            columns: const [
              DataColumn(label: Text('ID')),
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Age')),
            ],
            rows: List.generate(10, (index) {
              return DataRow(cells: [
                DataCell(Text('${index + 1}')),
                DataCell(Text('Name ${index + 1}')),
                DataCell(Text('${20 + index}')),
              ]);
            }),
          ),
        ),
      ),
    );
  }
}