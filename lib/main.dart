import 'package:flutter/material.dart';
import 'package:whatsapp/RouteGenerator.dart';
import 'Home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Login.dart';


void main () {
  runApp(MaterialApp(
    home: Home(),
    theme: ThemeData(
      primaryColor: Color(0xff075E54),
      accentColor: Color(0xff25D366)
    ),
    initialRoute: "/",
    debugShowCheckedModeBanner: false,
    onGenerateRoute: RouteGenerator.generateRoute,
  ));

}
