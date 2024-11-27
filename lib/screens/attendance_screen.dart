import 'package:flutter/material.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Attendance')),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Member ${index + 1}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.location_on),
                  onPressed: () {
                    Navigator.pushNamed(context, '/location', arguments: index);
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.map),
                  onPressed: () {
                    Navigator.pushNamed(context, '/routeDetails',
                        arguments: index);
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
