import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/routes/routes.route.dart';



void main() {
  // print(Platform.isAndroid?"":"");
  runApp(App()
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Text("Welcome omkar"),
      initialRoute: "/home",
      getPages: Routes().routes,
      );
    
  }
}
