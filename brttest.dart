import 'package:flutter/material.dart';

void main() => runApp(ButtonDemo());

class ButtonDemo extends StatefulWidget {
  @override
  State createState() => ButtonDemoState();
}

class ButtonDemoState extends State<ButtonDemo> {
  static const String _title = "Button 위젯 데모";
  String _buttonState = "off";

  void onClick(){
    print('onClick');
    setState(() {
      if(_buttonState == 'off')
        _buttonState = 'on';
      else
        _buttonState = 'off';
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text(_title)),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('사각 버튼'),
              onPressed: onClick,
            ),
            Text('$_buttonState'),
            RaisedButton(
              child: Text('둥근버튼'),
              onPressed: onClick,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)
              ),
            )
          ],
      ),
      ),
    );
  }
}