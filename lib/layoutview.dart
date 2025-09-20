import 'package:flutter/material.dart';

class Layview extends StatelessWidget {
  const Layview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Widget Layout View')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Daftar Menu Aplikasi
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Menu Aplikasi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                ListTile(leading: Icon(Icons.map), title: Text('Map')),
                ListTile(leading: Icon(Icons.photo_album), title: Text('Album')),
                ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
              ],
            ),

            // 2. Daftar Warna Horizontal
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Warna Horizontal', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(width: 160,color: Colors.red),
                  Container(width: 160,color: Colors.blue),
                  Container(width: 160,color: Colors.green),
                  Container(width: 160,color: Colors.yellow),
                  Container(width: 160,color: Colors.orange),
                ],
              ),
            ),

            // 3. Daftar Grid
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Grid Item', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              children: List.generate(6, (index) {
                return Card(
                  margin: const EdgeInsets.all(8),
                  child: Center(child: Text('Item $index')),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}