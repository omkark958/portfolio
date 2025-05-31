import 'dart:async';

import 'package:flutter/material.dart';
import "package:provider/provider.dart";



void main() {
  // print(Platform.isAndroid?"":"");
  runApp(App()
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Text("Welcome to hood")
      );
    
  }
}
