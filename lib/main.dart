import 'package:flutter/material.dart';
import 'package:flutter_routing/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      title: 'My Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: buildRoute(context),
      debugShowCheckedModeBanner: false,
    );
  }
}