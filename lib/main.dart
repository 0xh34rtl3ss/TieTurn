// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'login.dart';
import 'appointment.dart';
import 'completed.dart';
import 'dart:io';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Color(0xFF6BCDE6),

        // Define the default font family.
        fontFamily: 'Georgia',
      ),
      home: const Login(),
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("RHB Bank"),
          backgroundColor: Color(0xdd225c88),
          bottom: const TabBar(
            indicatorColor: Color(0xFF6BCDE6),
            tabs: [
              Tab(icon: Icon(Icons.camera)),
              Tab(icon: Icon(Icons.format_align_center)),
            ],
          ),
        ),
        body: TabBarView(children: []),
      ),
    );
  }
}
