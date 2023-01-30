// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rhb/provider/google_sign_in.dart';
import 'login.dart';
import 'appointment.dart';
import 'completed.dart';
import 'dart:io';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    //need to install firebase CLI and do fireflutter configuration to enable this and firebase_options.dart
    //guide is on this website: https://firebase.google.com/docs/cli#windows-npm
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            // Define the default brightness and colors.
            brightness: Brightness.light,
            primaryColor: Color(0xFF6BCDE6),

            // Define the default font family.
            fontFamily: 'Georgia',
          ),
          home: const Login(),
          routes: {
            '/appointment': (context) => AppointmentPage(),
            '/completed': (context) => Completedpage()
          },
        ),
      );
}

class MainBar extends StatefulWidget {
  const MainBar({super.key});

  @override
  State<MainBar> createState() => _MainBarState();
}

class _MainBarState extends State<MainBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Login());
  }
}

// class _MainBarState extends State<MainBar> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: Login());
//   }
// }
