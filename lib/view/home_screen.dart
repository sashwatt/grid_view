import 'package:grid_view/view/card_example.dart';
import 'package:grid_view/view/data_table.dart';
import 'package:grid_view/view/grid_screen.dart';
import 'package:grid_view/view/list_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300, // Set a fixed width
              height: 50, // Set a fixed height
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GridScreen()),
                  );
                },
                child: const Text('Go to Grid Screen'),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListScreen()),
                  );
                },
                child: const Text('Go to List Screen'),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DataTableExample()),
                  );
                },
                child: const Text('Go to Data Table Screen'),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CardExample()),
                  );
                },
                child: const Text('Go to Card Screen'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}