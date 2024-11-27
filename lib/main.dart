import 'package:flutter/material.dart';
import 'screens/attendance_screen.dart';
import 'screens/location_screen.dart';
import 'screens/route_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Location Screen App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const AttendanceScreen(),
        '/location': (context) => const LocationScreen(),
        '/routeDetails': (context) => const RouteDetailsScreen(),
      },
    );
  }
}
