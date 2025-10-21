import 'package:envppb/layoutview.dart';
import 'package:envppb/layoutwid.dart';
import 'package:envppb/listitem.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tugas PPB')),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('aset/img/bg.jpg'),
            fit: BoxFit.cover
          )
        ),
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            ElevatedButton(
              child: Text('Layout Widget'),
              onPressed: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => const laywidget()));
            },
            ),
            SizedBox(height: 15,),
              ElevatedButton(
                child: Text('Layout List View'),
                onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const Layview()));
                },
              ),
              SizedBox(height: 15,),
                ElevatedButton(
                  child: Text('List Item'),
                  onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const llist()));
                },
              ),
            ],
          )
        ),
      )
    );
  }
}