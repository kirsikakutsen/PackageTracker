import 'package:flutter/material.dart';
import 'package:package_tracker/routes/routes.dart';
import 'package:package_tracker/ui/package_details/package_details.dart';
import 'package:package_tracker/ui/search_screen/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Package Tracker',
      initialRoute: Routes.searchScreen,
      routes: {
        Routes.packageDetails: (context) => const PackageDetailsScreen(),
        Routes.searchScreen: (context) => const SearchScreen(),
      },
    );
  }
}