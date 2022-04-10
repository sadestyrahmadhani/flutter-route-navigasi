import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Profile extends StatelessWidget {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _tempatLahirController = TextEditingController();
  final TextEditingController _tanggalLahirController = TextEditingController();
  final TextEditingController _agamaController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _namaController.text = 'Sadesty Rahmadhani';
    _tempatLahirController.text = 'Banyuwangi';
    _tanggalLahirController.text = '01 Desember 2001';
    _agamaController.text = 'Islam';
    _alamatController.text = 'Sumberbulu-Songgon';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          const ClipOval(
            child: Image(image: AssetImage('assets/images/profile.jpg'), width: 100.0, height: 100.0, fit: BoxFit.cover,),
          ),
          TextField(
            controller: _namaController,
            enabled: false,
            decoration: const InputDecoration(
              labelText: 'Nama',
              border: UnderlineInputBorder(),
            ),
          ),
          TextField(
            controller: _tempatLahirController,
            enabled: false,
            decoration: const InputDecoration(
              labelText: 'Tempat Lahir',
              border: UnderlineInputBorder(),
            ),
          ),
          TextField(
            controller: _tanggalLahirController,
            enabled: false,
            decoration: const InputDecoration(
              labelText: 'Tanggal Lahir',
              border: UnderlineInputBorder(),
            ),
          ),
          TextField(
            controller: _agamaController,
            enabled: false,
            decoration: const InputDecoration(
              labelText: 'Agama',
              border: UnderlineInputBorder(),
            ),
          ),
          TextField(
            controller: _alamatController,
            enabled: false,
            decoration: const InputDecoration(
              labelText: 'Nama',
              border: UnderlineInputBorder(),
            ),
          ),
        ]),
      ),
    );
  }
}