import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'Listone.dart';

import 'package:flutter_tts/flutter_tts.dart';

class Savhaonelist extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();
  final int position;
  Savhaonelist(this.position);


  @override
  Widget build(BuildContext context) {
    Future _speak(String pages) async{
      await flutterTts.setLanguage("en-US");
      await flutterTts.setPitch(1);
      await flutterTts.speak(pages);
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title:  Icon(Icons.search),
        actions: <Widget>[
          Icon(Icons.home),
        ],

      ),

      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[


              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: (){},
              ),
          ],
          ),

        Row(children: <Widget>[
          IconButton(
            icon: Icon(Icons.volume_up),
            onPressed: (){
              return _speak( pages[position].Textfuor );
            },
          ),

        Column(children: <Widget>[
          Text(
              pages[position].Textfuor),
          Text(pages[position].Textfife),
        ],),

    ],),
    Row(children: <Widget>[


      IconButton(

        icon: Icon(Icons.volume_up),
        onPressed: (){
          return _speak( pages[position].Textsex);
        },
      ),
        Column(children: <Widget>[
          Text(pages[position].Textsex),
          Text(pages[position].Textseven),
        ],),

    ],),
       Row(children: <Widget>[
         IconButton(
           icon: Icon(Icons.volume_up),
           onPressed: (){
             return _speak( pages[position].Texteat);
           },
         ),
         Column(children: <Widget>[
           Text(pages[position].Texteat),
           Text(pages[position].Textnain),
         ],),

    ],),
    ],),
      ),
    );
  }
}
