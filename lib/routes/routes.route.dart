import 'package:get/get.dart';
import 'package:portfolio/screens/home.screen.dart';

class Routes {

// final List<GetPage> appRoutes = [
//   GetPage(
//     name: '/',
//     page: () => HomePage(),
//   ),
//   GetPage(
//     name: '/about',
//     page: () => AboutPage(),
//   ),
// ];

  final routes=[
    GetPage(name: "/home", page: ()=> HomeScreen())
  ];
}