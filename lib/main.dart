import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(MyApp( ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      home: HomePage(),
    );

  }
}




class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title:  Icon(Icons.search),
        actions: <Widget>[
          Icon(Icons.close),
        ],

      ),

      body: Container (
        color: Colors.white,
        child: Stack(children: <Widget>[

          _MyWidget(context),
          _MyWidget(context),
        ],),
      ),
    );
  }
}




Widget _MyWidget(BuildContext context) {
  TextStyle _butdesign =TextStyle(
    color: Colors.white,
    fontSize: 25,
    fontWeight:FontWeight.bold,
  );

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[


          SizedBox(
            width: 120,
            height: 120,
            child: RaisedButton(
              color: Colors.black,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>pakg2(),
                ),
                );
              },
              child: Text("This is 1" ,
                style: _butdesign,
                textAlign: TextAlign.center,),),
          ),


          SizedBox(height: 10,),
          SizedBox(
            width: 120,
            height: 120,
            child: RaisedButton(
              color: Colors.black,
              onPressed: (){},
              child: Text("This is 2" ,
                style: _butdesign,
                textAlign: TextAlign.center,),),
          ),
        ],
      ),
    ],);
}