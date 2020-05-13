import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'Stateless -> stateful 위젯',
  home: Scaffold(
    appBar: AppBar(title: Text('Stateless -> Sateful 위젯 데모')),
    body: _FitstStatefulWidget(),
  ),
));

class _FitstStatefulWidget extends StatefulWidget{
  @override
  State createState() => _FitstStatefulWidgetState();
}

class _FitstStatefulWidgetState extends State<_FitstStatefulWidget>{
  @override
  Widget build(BuildContext context) {
   return Text('이것은 stateful 위젯입니다');
  }
}
