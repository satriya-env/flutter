import 'package:flutter/material.dart';

class Objek extends StatelessWidget {
  const Objek({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Layout', style: TextStyle(fontFamily: 'coco'),),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(  
            'aset/img/objekw.jpg',
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.all(30),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Floating House Lembang', style: TextStyle(fontFamily: 'coco', fontWeight: FontWeight.w500),),
                    Text('Lembang, Bandung', style: TextStyle(fontFamily: 'coco', fontSize: 12, color: const Color.fromARGB(255, 119, 119, 119)),),
                  ],
                ),
                SizedBox(width: 125,),
                Icon( Icons.star, color: Colors.deepOrange,),
                Text('77')
              ],
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.call, color: Colors.blue,),
                  SizedBox(height: 8,),
                  Text('CALL', style: TextStyle(fontFamily: 'coco',),)
                ],
              ),
              Column(
                children: [
                  Icon(Icons.near_me, color: Colors.blue,),
                  SizedBox(height: 8,),
                  Text('ROUTE', style: TextStyle(fontFamily: 'coco',),)
                ],
              ),
              Column(
                children: [
                  Icon(Icons.share, color: Colors.blue,),
                  SizedBox(height: 8,),
                  Text('SHARE', style: TextStyle(fontFamily: 'coco',),)
                ],
              ),
            ],
          ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.all(32),
            child: Text(
              'Floating House Lembang merupakan salah satu destinasi wisata yang menawarkan pengalaman menginap di rumah terapung di atas danau buatan. Terletak di kawasan Lembang, Bandung, tempat ini menawarkan pemandangan alam yang indah serta suasana yang tenang dan damai. Pengunjung dapat menikmati berbagai aktivitas seperti memancing, berperahu, atau sekadar bersantai menikmati keindahan alam sekitar.',
              style: TextStyle(fontFamily: 'coco', fontSize: 14,),
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}