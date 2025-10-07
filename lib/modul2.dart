import 'package:flutter/material.dart';

class Modul2 extends StatelessWidget {
  const Modul2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: 
      Text('Profil Saya',style: TextStyle(color: Colors.white),),
      backgroundColor: const Color.fromARGB(221, 0, 153, 255),),
      body: Column(
        children: [
          SizedBox(height: 20),
          Center(
            child: ClipOval(
              child: Image.asset('aset/img/arisu.png',width: 150,),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Text('Alice',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
          ),
          Center(
            child: Text('A Player in Borderland',style: TextStyle(fontSize: 16,color: Colors.blueGrey)),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
              onPressed: (){}, 
              icon: Icon(Icons.call),
              label: Text('Call')
              ),
              ElevatedButton.icon(
              onPressed: (){}, 
              icon: Icon(Icons.map),
              label: Text('Route')
              ),
              ElevatedButton.icon(
              onPressed: (){}, 
              icon: Icon(Icons.share),
              label: Text('Share')
              )
            ],
          )
        ],
      )
    );
  }
}