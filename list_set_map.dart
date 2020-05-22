void main()
{
  List<int> numbers = [100, 200, 300];
  List<int> evens = [2, 4, 6, 8, 10];

  List<String> planets = ['Earth', 'Jupiter', 'Mars', 'Saturn'];
  List<String> otherplanets = ['Venus', 'Mercury', 'Neptune'];


  print('numvers are $numbers');
  print('first number is ${numbers[0]}');
  print('last number is ${numbers[numbers.length - 1]}');

  for(int each in evens) {
    print('each even number is $each');
  }

  List<String> allPlanets = planets + otherplanets;
  print('all plants are $allPlanets');

  // 집합 선언
  Set<int> naturalNumber = {1, 2, 3, 4, 1}; // = 실제로는 {1, 2, 3, 4}
  Set<String> ids = {"x-3", "x-2", "x-1"};

  print('numbers are $naturalNumber');
  print('ids are ${numbers[0]}');

  for (int each in naturalNumber){
    print('each number is $each');
  }

  Set<int> a = {100, 200, 300};
  Set<int> b = {100, 200, 500, 1000};

  print('a union b = ${a.union(b)}');                   //합집합
  print('a intersection b = ${a.intersection(b)}');     //교집합
  print('a difference b = ${a.difference(b)}');         // A - B

  Map<int, String> intMap = {
    0: 'AAA',
    50: 'BBB',
    100: 'CCC'
  };
  
  print('intMap is $intMap');
  print('intMap[50] : ${intMap[50]}');
  intMap.update(50, (val) => 'DDD');

  Map<String, Student> students = {
    'jake' : Student('Jake', 'Warton', 'jake@gmail.com'),
    'tony' : Student('Tony', 'Starl', 'tony@gmail.com'),
    'kent' : Student('Kent', 'Beak', 'kent@gmail.com'),
  };

  String fullName = students['jake'].firstName + ' ' + students['jake'].lastName;
  print('jake\'s full name is $fullName');

  String email = students['kent'].email;
  print('Kent\'s email is $email');

}

class Student {

  String firstName;
  String lastName;
  String email;

  Student(this.firstName, this.lastName, this.email );

}