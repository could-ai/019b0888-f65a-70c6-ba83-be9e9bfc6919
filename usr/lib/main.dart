import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/home_screen.dart';
import 'screens/info_screen.dart';
import 'screens/report_screen.dart';
import 'screens/stats_screen.dart';

void main() {
  runApp(const LionfishApp());
}

class LionfishApp extends StatelessWidget {
  const LionfishApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lionfish Invasion Tracker',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/info': (context) => const InfoScreen(),
        '/report': (context) => const ReportScreen(),
        '/stats': (context) => const StatsScreen(),
      },
    );
  }
}
