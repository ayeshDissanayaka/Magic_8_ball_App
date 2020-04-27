import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        color: Colors.lightBlueAccent,
        home: Ball(),
        debugShowCheckedModeBanner: false,
      ),
    );


class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  int ballnumber=1;
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Center(
          child: Text(
              'Ask Me Anything'
          ),
        ),
      ),
      body:

      Center(
        child: Container(
          color: Colors.lightBlueAccent,
            child: Row(

              children: <Widget>[

                Expanded(

                  child:FlatButton(
                    onPressed: (){
                      setState(() {
                        ballnumber=Random().nextInt(4)+1;
                      });
                    },
                    child: Image.asset('images/ball$ballnumber.png'),
                  ),
                )
              ],
            ),
          ),

      ),



    );
  }
}
