import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'Stateless Widget Demo',
  home: Scaffold(
    appBar: AppBar(title: Text('Statelss 위젯 데모'),),
    body: _FirstStatelessWidget(),
  ),
));

class _FirstStatelessWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Text('이것은 stateless 위젯입니다');
  }
}

//화면상에 표시되지만 처음 설정된것 밖에 표시 불가