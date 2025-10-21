import 'package:flutter/material.dart';

class Objek extends StatelessWidget {
  const Objek({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Flutter Layout',
            style: 
            TextStyle(fontFamily: 'coco'),
            ),
        ),
      ),
      body: Column(
        children: [
          Image.asset('aset/img/objekw.jpg'),
          SizedBox(height: 10,),
          Row(
              children: [
                Padding(padding: EdgeInsetsGeometry.all(25)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  Text('Floating House Lembang', style:  TextStyle(fontFamily: 'coco', fontWeight: FontWeight.w500),),
                  Text('Lembang, Bandung', style: TextStyle(color: Colors.grey, fontFamily: 'coco', fontSize: 12),),
                  ],
                ),
                SizedBox(width: 100,),
                Icon(Icons.star, color: Colors.orange,),
                Text('77')
            ],
          ), 
        ],
      )
    );
  }
}