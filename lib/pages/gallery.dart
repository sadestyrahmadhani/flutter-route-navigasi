import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  Gallery({Key? key}) : super(key: key);

  final List assetsImages = [
    'assets/images/G1.jpg',
    'assets/images/G2.jpg',
    'assets/images/G3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 10,
        itemBuilder: (context,  index) {
          if (index > 2) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  border: Border.all(color: Colors.grey),
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  image: DecorationImage(
                    image: AssetImage(assetsImages[index % 3]),
                    fit: BoxFit.contain,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: const BoxDecoration(color: Colors.black45),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Gambar ${index + 1}', style: const TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white)),
                            const Text('Lorem ipsum dolor sit amet', style: const TextStyle(fontSize: 10.0, color: Colors.white)),
                          ],
                        )
                      ),
                      bottom: 0,
                      left: 0,
                      right: 0,
                    )
                  ],
                )
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  border: Border.all(color: Colors.grey),
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  image: DecorationImage(
                    image: AssetImage(assetsImages[index]),
                    fit: BoxFit.contain,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: const BoxDecoration(color: Colors.black45),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Gambar ${index + 1}', style: const TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white)),
                            const Text('Lorem ipsum dolor sit amet', style: TextStyle(fontSize: 10.0, color: Colors.white)),
                          ],
                        )
                      ),
                      bottom: 0,
                      left: 0,
                      right: 0,
                    )
                  ],
                )
              ),
            );
          }
        }
      ),
    );
  }
}