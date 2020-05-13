void main() {
  print('Hello world');
  int num1 = 100;
  double num2 = 3.14;
  num num3 = 100;        //num은 정수도 담을수 있고
  num num4 = 3.14;       //실수를 담을 수도 있다

  double sum1 = num1 + num2;
  print(sum1);

  num sum2 = num3 * num4;
  print(sum2);

  //문자열 타입
  String text = 'Carpe diem, quam minimum credula postero';
  String myName = 'yudong';
  String hello = 'Hello ${myName}';
  print(text.substring(0,10));
  print(hello);


  String str1 = 'flutter';
  String str2 = 'google';
  String addstr = str1 + ' ' + str2;
  int len = addstr.length;
  print(addstr + ' => length : $len');

  //bool 타입
  bool a = true;
  bool b = false;
  bool chk = a && b;
  print('chk is $chk');

  //동적 타입
  var strlen = len;
  var textt = str1;
  var check = chk;
  var variable = textt;

  print('$strlen, $text, $check, $variable');

  //삼항 연산자
  String _pw = '1234';
  String _pwip = '1234';
  String _re = _pw == _pwip ? '로그인 성공' : '비밀번호를 다시 입력하세요';
  print(_re);

}