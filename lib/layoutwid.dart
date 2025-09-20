import 'package:flutter/material.dart';

class laywidget extends StatelessWidget {
  const laywidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Widget',style: TextStyle(fontFamily: 'coco'),),
      ),
      body: Column(
        children: [
          Center(
            child:  ClipOval(
            child: Image.asset(
              'aset/img/chisiya.jpg',
              width: 150,
              ),
          ),
          ),
          SizedBox(height: 10),
          Text(
            'Chisiya Shintaro',
            style: TextStyle(fontSize: 20, fontFamily: 'coco', fontWeight: FontWeight.w700),
            ),
          Text(
          'Best Diamond Player in Borderland',
          style: TextStyle(fontSize: 15, fontFamily: 'coco'),
          ),
          
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.call),
              label: Text('Call')),
              ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.map),
              label: Text('Route')),
              ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.share),
              label: Text('Share')),
            ],
          )
        ],
      ),
    );
  }
}