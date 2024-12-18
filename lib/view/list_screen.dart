import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  final List<String> items = List.generate(20, (index) => "List Item $index");

  ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Example'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.list),
            title: Text(
              items[index],
              style: const TextStyle(fontSize: 16),
            ),
          );
        },
      ),
    );
  }
}