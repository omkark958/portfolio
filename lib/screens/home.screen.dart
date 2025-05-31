import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/api/api.api.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget{
  ApiService api= Get.find();
  HomeScreen({super.key});
  testApi()async{
    dynamic res=await api.test();
    print(res);
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(body:Center(
      child:  Column(children: [Text("Working on it 🙌"),SizedBox(height: 25,),
      ElevatedButton(onPressed: testApi, child: Text("Test Api"))],),
    ));
  }
}