import 'package:flutter/material.dart';
import 'package:sentiahelpdesk/screens/action.dart';
import 'package:sentiahelpdesk/screens/action_admin.dart';
import 'package:sentiahelpdesk/screens/add_query_v3.dart';
import 'package:sentiahelpdesk/screens/assign_v2.dart';
import 'package:sentiahelpdesk/screens/dash_bord_v4.dart';
import 'package:sentiahelpdesk/screens/login_v2.dart';
import 'package:sentiahelpdesk/screens/login_v3.dart';
import 'package:sentiahelpdesk/screens/splash.dart';

import 'screens/dash_board_v3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(

          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
        ),
      ),

      initialRoute: "/",
      routes: {
        '/': (context) => const Splash(),
        '/login': (context) => const LoginThree(),
        '/assign': (context) => const AssignTwo(),
        '/addquery': (context) => const AddQuery(),
        '/dashboard': (context) => const DashboardFour(),
        '/action': (context) => const Actionn(),
        '/adminaction': (context) => const AdminAction(),
      },
    );
  }
}

