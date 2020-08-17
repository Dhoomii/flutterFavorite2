import 'Listone.dart';
import 'package:flutter/material.dart';
import 'Savhaonelist.dart';
import 'package:flutter_tts/flutter_tts.dart';

class pakg2 extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();


  @override
  Widget build(BuildContext context) {
    Future _speak(String pages) async{
      await flutterTts.setLanguage("en-US");
      await flutterTts.setPitch(1);
      await flutterTts.speak(pages);
    }
    void_addPages();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:  Icon(Icons.search),
        actions: <Widget>[
          Icon(Icons.home),
        ],

      ),
      body: ListView.builder(

        itemBuilder: (context,position) {

          return  Card(
            child:ListTile(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>Savhaonelist(position)));

              },
              title:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(children: <Widget>[
                    IconButton(
                      color: Colors.black,
                      icon: Icon(Icons.volume_up),
                      onPressed: (){
                        return _speak( pages[position].Textone );
                      },
                    ),
                    Column(  children: <Widget>[
                      Row(

                        children: <Widget>[
                          Text ( pages[position].Textone),
                          SizedBox(width: 10,),
                          Text ( pages[position].Texttow),
                        ],
                      ),
                      Text ( pages[position].Textthree),
                    ],
                    ),

                  ],),
                  Row(children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.favorite),
                      onPressed: (){},
                    ),
                  ],)

                ],
              ),
            ),
          );
        },
        itemCount: pages.length,
      ),
    );
  }
}
