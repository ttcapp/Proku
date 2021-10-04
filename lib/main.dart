import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home:Myhomepage() ,
    );
  }
}

String btntext="Button 1";
String btntext2="Button 2";
String btntext3="Button 3";
Color btnClr1= Colors.amber;
Color btnClr2= Colors.green;
Color btnClr3= Colors.cyanAccent;
class Myhomepage extends StatefulWidget {
  const Myhomepage({Key? key}) : super(key: key);

  @override
  _MyhomepageState createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      centerTitle: true,
    title: Text("My Frist App"),
    ),
      body: Container(
        child: Align(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
           // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text(btntext,style: TextStyle(color: Colors.white),),
          color: Colors.deepOrange,
                  onPressed:() {
                  setState(() {
                    btntext="Button Pressed";
                  });

                  }
              ),
              RaisedButton(
                  child: Text(btntext2,style: TextStyle(color: Colors.white),),
                  color: Colors.deepOrange,
                  onPressed:() {
                    setState(() {
                      btntext2="Button Pressed";
                    });

                  }
              ),
              RaisedButton(
                  child: Text(btntext3,style: TextStyle(color: Colors.white),),
                  color: Colors.deepOrange,
                  onPressed:() {
                    setState(() {
                      btnClr1=Colors.lightBlue;
                      btnClr2=Colors.grey;
                      btnClr3=Colors.deepOrangeAccent;
                      btntext3="Button Pressed";
                    });

                  }
              ),
            ],
          ),
        ),
      ),
    );

  }
}

