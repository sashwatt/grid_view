import 'package:flutter/material.dart';

class GridScreen extends StatelessWidget {
  final List<String> items = List.generate(20, (index) => "Item $index");

  GridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            crossAxisSpacing: 10.0, // Horizontal space between items
            mainAxisSpacing: 10.0, // Vertical space between items
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              child: Center(
                child: Text(
                  items[index],
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}