import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Contact extends StatelessWidget {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _whatsAppController = TextEditingController();
  final TextEditingController _instagramController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _namaController.text = 'Sadesty Rahmadhani';
    _emailController.text = 'sadestyrahmadhani012@gmail.com';
    _whatsAppController.text = '+62 819 1322 2238';
    _instagramController.text = '@sades_rd';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          TextField(
            controller: _namaController,
            enabled: false,
            decoration: const InputDecoration(
              labelText: 'Nama',
              border: UnderlineInputBorder(),
            ),
          ),
          TextField(
            controller: _emailController,
            enabled: false,
            decoration: const InputDecoration(
              labelText: 'E-mail',
              border: UnderlineInputBorder(),
            ),
          ),
          TextField(
            controller: _whatsAppController,
            enabled: false,
            decoration: const InputDecoration(
              labelText: 'WhatsApp',
              border: UnderlineInputBorder(),
            ),
          ),
          TextField(
            controller: _instagramController,
            enabled: false,
            decoration: const InputDecoration(
              labelText: 'Instagram',
              border: UnderlineInputBorder(),
            ),
          ),
        ]),
      ),
    );
  }
}