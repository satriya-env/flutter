import 'package:flutter/material.dart';

class Favwid extends StatefulWidget {
  const Favwid({super.key});

  @override
  State<Favwid> createState() => _FavwidState();
}

class _FavwidState extends State<Favwid> {
  // deklarasi var
  bool _isFav = true;
  String t = "#";
  int _fav = 1;

  void tfav(){
    setState(() {
      if(_isFav){
        _fav += 6;
        _isFav = false;
      }else{
        _fav -= 6;
        _isFav = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      AppBar(
        title: Text('Favorite Widget', 
        style: TextStyle(color: const Color.fromARGB(221, 31, 31, 31)),),
      backgroundColor:Colors.yellow
      ),
      backgroundColor: const Color.fromARGB(221, 31, 31, 31),
      body: Center(
        child: Card(
          color: const Color.fromARGB(221, 31, 31, 31),
          elevation: 7,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(15)
          ),
          margin: EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                'Tekan ini kalo lolos playoff',
                style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
                textAlign: TextAlign.center,
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: tfav, 
                      icon: _isFav 
                      ? Icon(Icons.star_rounded, color: Colors.yellow)
                      : Icon(Icons.star_border_rounded, color: Colors.deepOrange,)
                      ),
                    SizedBox(width: 20,),
                    Text(
                      '$t',
                      style: TextStyle(color: Colors.white),
                      ),
                    Text(
                      '$_fav',
                      style: TextStyle(color: Colors.white),
                      ),
                  ],
                )
              ],
            ),
            ),
        ),
      ),
    );
  }
}