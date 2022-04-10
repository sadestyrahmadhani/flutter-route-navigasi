import 'package:flutter/material.dart';
import 'package:flutter_routing/drawer/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Curriculum Vitae"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset('assets/images/background.png'), 
            const SizedBox(height: 50),
            const Text('Welcome to My Application', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40), textAlign: TextAlign.center),
          ],
        ), 
      ),
      drawer: const DrawerWidget(),
    );
  }
}