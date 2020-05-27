import 'dart:io';
import 'dart:math';
import 'dart:convert';

void main(){
//  //코어 라이브러리
//  print('hello');
//  int num1 = 5000;
//  double num2 = 360.1234;
//
//  //숫자 -> 문자 변환
//  String num1Str = num1.toString();
//  String num2Str = num2.toStringAsFixed(2);
//  print('num1 to str is $num1Str');
//  print('num2 to str is $num2Str');
//
//  //문자 -> 숫자 변환
//  List<String> inputs = [
//    '-1',//[0]
//    '1234',//[1]
//    '32.25'//[2]
//  ];
//
//  print(int.parse(inputs[0]));
//  print(int.parse(inputs[1]));
//  print(double.parse(inputs[2]));
//  print(num.parse(inputs[2]));
//
//
//  //dart:io
//  stdout.write('Enter name: '); // python input()과 비슷
//  String input = stdin.readLineSync(); // python input()과 비슷
//  print('Hello, $input');
//
//  // 파일 생성
//  File newFile = File('text.txt');
//  newFile.createSync();
//
//   // 파일 쓰기
//    File memoFile = File('text.txt');
//    String contents ="""
//    2020-05-23
//    하늘이의 극대노
//    """;
//    memoFile.writeAsStringSync(contents);
//
//  //파일 읽기(동기 방식)
//  File poem = File('text.txt');
//  List<String> lines = poem.readAsLinesSync();
//  for (String line in lines){
//    print(line);
//  }
//
//  //dart:math
//
//  List<int> nummm = [100, 200, 300,400 ,250];
//
//  //최댓값 최솟값
//  int maxValue = max(nummm[0], nummm[1]);
//  int minValue = min(nummm[2], nummm[3]);
//  print('max(100, 200) is $maxValue');
//  print('min(300, 400) is $minValue');
//
//  //제곱근
//  double sqaureRooted = sqrt(nummm[4]);
//  print('sqrt(250) is $sqaureRooted');
//
//  //난수 발생
//  List<int> randomNumbers = _makeRandomNumbers(10, 8);
//  print('random number(0..9) is $randomNumbers');
//
//  // 반올림은 math 패키지가 아님
//  double doubleValue = 500.51;
//  int rounded = doubleValue.round();
//  print('500.51 rounds $rounded');

  //dart:convert
  //json 문자열 파싱하기
  String jsonsStr = """
  {
    "basket" : {
      "apple" : 50,
      "banana" : 10,
      "grape" : 5
    }
  }
  """;

  Map json = jsonDecode(jsonsStr);
  Map basket = json["basket"];
  int apples = basket["apple"];
  int bananas = basket["banana"];
  int grapes = basket["grape"];
  print("apples are $apples");
  print("bananas are $bananas");
  print("grapes are $grapes");

  //json 파일 읽기
  Map basketMap = _readBasketJson('basket.json');
  print('grapes was ${basketMap["grape"]}');
//
//  //json 파일 쓰기
//  basketMap.update('grape', (v) => 99);
//  File('basket.json').writeAsStringSync(jsonEncode(basketMap));
//
//  Map updated = _readBasketJson('basket.json');
//  int grapesNow = updated["grape"];
//  print('now grapes are $grapesNow');

}

List<int> _makeRandomNumbers(int max, int counts){
  Random rand = Random();
  List<int> res = List();
  for (int i = 0; i < counts; ++i)
    {
      res.add(rand.nextInt(max));
    }
  
  return res;
}

Map _readBasketJson(String fileName){

  String contents = File(fileName).readAsStringSync();
  print('contents : $contents');
  return jsonDecode(contents);

}