import 'package:flutter/material.dart';
import 'Register.dart';
import 'login.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,initialRoute: 'login',routes: {'login':(context) => MyLogin(),'register':(context)=>register()},
  ));
}