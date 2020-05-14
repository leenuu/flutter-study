import 'package:flutter/material.dart';
import 'dart:io';

void main() => runApp(RowColumnDemo());

class RowColumnDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Longin Form',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          resizeToAvoidBottomPadding: false, //bottomoverflow 해결법

        body: Container(
          padding: EdgeInsets.fromLTRB(20, 120, 20, 120),
          child: Column(
            children: <Widget>[
              Hero(tag: 'heoro', 
                  child: CircleAvatar(
                   child:  Image.asset('assets/logo.png'),
                   backgroundColor: Colors.transparent,
                   radius: 58.0,
                  )
              ),
              SizedBox(height: 45.0,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                initialValue: 'example@example.com',
                decoration: InputDecoration(
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 15.0,),
              TextFormField(
                initialValue: 'input password',
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text('Log In'),
                    onPressed: (){},
                  ),
                  SizedBox(width: 10.0,),
                  RaisedButton(
                    child: Text('Cancel'),
                    onPressed: (){exit(0);},
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}