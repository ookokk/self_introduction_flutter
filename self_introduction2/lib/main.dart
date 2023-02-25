import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(BenimUyg());
}

class BenimUyg extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Satisfy'
      ),
      home:Scaffold(
        backgroundColor: Colors.brown[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget> [
                CircleAvatar(
                  radius: 70.0,
                    backgroundColor: Colors.lime,
                    backgroundImage: AssetImage('assets/images/osk.jpg'),
                ),
                Text('Osman Sait Kök',
                style:GoogleFonts.pacifico(
                  fontSize: 45,
                  color:Colors.brown[900],
                ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 45.0,),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                  children: <Widget>[
                      Icon(Icons.email,
                        color: Colors.black,
                      ),
                      SizedBox(

                        width: 10.0,
                      ),

                      Text(
                        'osmankok701@gmail.com',

                        style: TextStyle(
                          fontSize: 25,

                          color: Colors.black),
                      ),

                  ],
                ),
                    ),

                 ),
                SizedBox(height: 10,),
                Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 45.0,),
                    child: Row(
                  children: <Widget>[
                    Icon(Icons.link,
                      color: Colors.black,
                    ),
                    SizedBox(

                      width: 10.0,
                    ),

                    Text(
                      'https://www.linkedin.com/in/osmankok/',

                      style: TextStyle(
                        fontSize: 18,

                        color: Colors.black),
                    ),

                  ],
                ),

                 )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

