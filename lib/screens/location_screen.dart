import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final int memberIndex = ModalRoute.of(context)?.settings.arguments as int;

    return Scaffold(
      appBar: AppBar(title: const Text('Location Details')),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blueGrey.shade100,
              child: const Center(child: Text('Map Placeholder')),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5, // Example number of locations
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Visited Location ${index + 1}'),
                  subtitle: Text('Details for Member $memberIndex'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
