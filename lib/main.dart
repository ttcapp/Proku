import 'dart:html';

import 'package:flutter/material.dart';
bool pictureVisibility=false;

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

String btntext="Click to see picture";

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
      body: SingleChildScrollView(
        child: Align(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
           // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: Text(btntext,style: TextStyle(color: Colors.white),),
                color: Colors.deepOrange,
                  onPressed:() {
                  setState(() {
                    btntext="Picture is visible";
                    pictureVisibility=true;
                  });

                  }
              ),
              SizedBox(
                height: 10,
              ),
              Visibility(
                visible:pictureVisibility ,
                  child: Image.network("https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512_960_720.jpg")
              ),
              Image.asset("assets/images/img1.jpeg")
          ],

          ),
        ),
      ),
    );

  }
}

