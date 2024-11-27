import 'package:flutter/material.dart';

class RouteDetailsScreen extends StatelessWidget {
  const RouteDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final int memberIndex = ModalRoute.of(context)?.settings.arguments as int;

    return Scaffold(
      appBar: AppBar(title: const Text('Route Details')),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blueGrey.shade100,
              child: const Center(child: Text('Route Map Placeholder')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Member $memberIndex',
                    style: const TextStyle(fontSize: 18)),
                const SizedBox(height: 8),
                const Text('Start Location: XYZ'),
                const Text('Stop Location: ABC'),
                const Text('Total KM: 10 KM'),
                const Text('Total Duration: 30 Minutes'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
