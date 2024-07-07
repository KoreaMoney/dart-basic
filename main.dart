// main함수는 중요합니다.
// void main() {
//   print("hello world!");
// }

//--------------------------------------------------------------------------------------------------------
// 변수
// var는 지역변수를 선언할 때 사용한다.
// void main() {
//   var name = "hello";
//   name = 1; // type이 맞지 않아 문자열로 수정해야 한다.
// }

//--------------------------------------------------------------------------------------------------------
// void main() {
//   String name = "hello"; // 명시적으로 변수의 타입 지정, class에서 변수나 속성을 선언할때 type를 지정한다.
// }

//--------------------------------------------------------------------------------------------------------
//  Dynamic type - 사용되는 것을 추천하지 않지만 때때로 유용하게 사용된다.
// void main() {
//   var name; // dynamically generated or dynamic name;
//   name = "hello";
//   name = 123;
//   name = false; // type이 모두 가능하다.
// }
//--------------------------------------------------------------------------------------------------------

// Nullable Variable : null safety는 개발자가 null값을 참조할 수 없도록 하는 것.

/**
 * null safety가 없는 경우
 * 1. NoSuchMethodError가 발생한다.
 */
// bool isEmpty(String string) => string.length == 0;
// main() {
//   isEmpty(null); // error : The argument type 'Null' can't be assigned to the parameter type 'String'.
// }

/**
 * null safety가 있는 경우
 * 1. 데이터가 NULL이 될수 있음을 명시하는 것을 말한다.
 */
// void main() {
//   String? hello = "hello"; // ?이것은 string일수도 있고 null일 수도 있다는 것을 알려준다.
//   hello = null;
//   // hello.length; // The property 'length' can't be unconditionally accessed because the receiver can be 'null'.Try making the access conditional (using '?.') or adding a null check to the target
//   // if (hello != null) {
//   //   hello.isNotEmpty;
//   // }
//   // 간단하게
//   hello?.isNotEmpty; // hello가 null이 아니라면 isNotEmpty속성을 달라고 요청한다.
//   ;
// }
//--------------------------------------------------------------------------------------------------------

// final variable : 한번 정의된 변수를 수정할 수 없게 만들기 위한 것
// void main() {
//   final String hello = "hello";
//   // hello = "korea"; // The final variable 'hello' can only be set once. 이런 에러가 발생하게 된다.
// }
//--------------------------------------------------------------------------------------------------------

// last variable : final이나 var앞에 불여줄 수 있는 수식어이다.
// void main() {
//   late final String name; // late는 초기 데이터없이 변수를 선언할 수 있게 해준다.
//   // do something, go to api
//   name = "hello"; // data fetching할때 유용하다.
// }
//--------------------------------------------------------------------------------------------------------

// constant variable : compile time constant 어플을 실행하기 전 미리 알고 있는 값일 경우 사용된다. 모르면 finial,var를 사용해야한다.
// void main() {
//   const API = fetchApi();
// }
//--------------------------------------------------------------------------------------------------------

//자료형 : dart언어의 대부분은 object입니다. 그래서 객체 지향 언어라고 불립니다.

// BASIC
// void main() {
//   String name = "hello"; // 문자열
//   bool actvie = false; // boolean
//   int age = 12; // 정수
//   double moneny = 12.86; // 소수점
// }
//--------------------------------------------------------------------------------------------------------

// LISTS
// void main() {
//   var giveMeFive = true;
//   var numbers = [
//     1,
//     2,
//     3,
//     4,
//     5,
//     if (giveMeFive) 6,
//   ]; // var대신 List<int>을 사용해도 결과는 동일하다.
//   numbers.add(2); // 추가는 add로 진행한다.
//   numbers.first; // 첫번째 값을 찾아준다.
//   numbers.last; // 마지막 값을 찾아준다.

//   print(numbers);
// }
//--------------------------------------------------------------------------------------------------------

// String Interpolation : 변수에 text를 추가하는 방법 ($)
// void main() {
//   var name = "hello";
//   var age = 25;
//   var world = "$name is world and $name is ${age + 2}";
//   print(world);
// }
//--------------------------------------------------------------------------------------------------------

// Collection For :
// void main() {
//   var first = [
//     "KOREA",
//     "JAPAN",
//     "USA",
//   ];
//   var second = [
//     "UK",
//     "AUS",
//     "FRANCE",
//     for (var country in first) "$country",
//   ];
//   print(second);
// }
//--------------------------------------------------------------------------------------------------------

// MAPS : 여기에서 object는 typescript에서 any와 같은 존재다.
// void main() {
// var player = {
//   "name": "john",
//   "xp": 19.85,
//   "superpower": false,
// };

// 아래와 같은 구조의 형태는 결국 key값은 int가 되고 value는 boolean이 된다.
// Map<int, bool> player = {
//   1: false,
//   2: true,
// };
// print(player[1]); // 결과 false
// print(player[2]); // 결과 true

// Map<List<int>, bool> player = {
//   [1, 2, 5]: false,
//   [2, 5, 6]: true,
// };
// print(player);

//   List<Map<String, bool>> player = [
//     {
//       "korea": true,
//       "japan": false,
//     }
//   ];
//   print(player);
// }
//--------------------------------------------------------------------------------------------------------

// SETS : 순서가 있으며 반복적으로 들어와도 하나만 등록이 된다.
// void main() {
//   Set<String> numbers = {
//     "1",
//     "2",
//     "3",
//   };
//   numbers.add("1");
//   numbers.add("1");
//   numbers.add("1");
//   numbers.add("1");
//   numbers.add("1");
//   print(numbers); // 결과 : {1, 2, 3}
// }
//--------------------------------------------------------------------------------------------------------

// Functions
/**
 * 정의 : Dart는 진정한 객체 지향 언어이므로 함수도 객체이며 타입이 Function입니다.
 * 이는 함수를 변수에 할당하거나 다른 함수에 인수로 전달할 수 있음을 의미합니다.
 */
// String sayHello(String name) {
//   return "Hello $name nice meet you!";
// }

// String sayKoko(String name) => "Hello $name!";
// num plus(num a, num b) => a + b;
// void main() {
//   print(sayHello("korea"));
//   print(sayKoko("korea"));
//   print(plus(5, 10));
// }
//--------------------------------------------------------------------------------------------------------

/**
 * named parameter : parameter에 더 많은 내용을 담고 싶을 때 사용. 
 * num은 double을 받아서 소수점이 들어가지만 int는 정수라서 소수점이 들어가지 않는다.
 * Named parameters는 명시적으로 required로 표시되지 않는 한 선택 사항입니다. 
 * 기본값을 제공하지 않거나 Named parameters를 필수로 표시하지 않으면 해당 유형은 기본값이 null이 되므로 null을 허용해야 합니다.
 * 매개변수 앞에 required를 적어주면, 함수가 호출될 때 반드시 required가 적힌 매개변수가 포함되어야 한다는 것이다.
 */
// String sayHello(
//         {required String name, required int age, required String country}) =>
//     "My name is $name and my age is $age and I have been born $country";
// void main() {
//   print(sayHello(
//     age: 25,
//     name: "john",
//     country: "south korea",
//   ));
// }
//--------------------------------------------------------------------------------------------------------

/**
 * Optional positional parameters
 * Dart에서 [] 은 optional, positional parameter를 명시할 때 사용된다.
 * name, age는 필수값이고 []를 통해 country를 optional값으로 지정해줄 수 있다.
 */
// String sayHello(String name, int age, [String? country = "south korea"]) =>
//     "Hello $name, you are $age years old from $country";
// void main() {
//   var results = sayHello("korea", 25);
//   print(results);
// }
//--------------------------------------------------------------------------------------------------------

/**
 * QQ Operator
 * 1. QQ = ??이다. 용도 : ?? 연산자를 이용하면 왼쪽 값이 null인지 체크해서 null이 아니면 왼쪽 값을 리턴하고 null이면 오른쪽 값을 리턴한다.
 * ??= 연산자를 이용하면 변수 안에 값이 null일 때를 체크해서 값을 할당해줄 수 있다.
 * 2. Operator = ?=이다.
 * left ?? right
    -> left가 null이면 right return
    -> left가 null이 아니면 left return
 * left ??= 'ggg'
    -> left가 null이면 'ggg'를 넣어줌
 */
// String capitalizeName(String? name) => name?.toUpperCase() ?? "null값";
// void main() {
//   var results = capitalizeName("korea");
//   var resultsNull = capitalizeName(null);
//   print(results);
//   print(resultsNull);
// }
// ?= 예시
// void main() {
//   String? name;
//   name ??= "sugar";
//   name = null;
//   name ??= "js";
//   print(name);
// }
//--------------------------------------------------------------------------------------------------------

/**
 * Typedef
 * 자료형에 사용자가 원하는 alias를 붙일 수 있게 해준다. (자료형 이름의 별명을 만들 때 사용)
 */
// typedef ListOfInt = List;

// ListOfInt reverseListOfNumbers(ListOfInt list) {
//   var reversedList = list.reversed.toList();
//   return reversedList;
// }

// void main() {
//   print(reverseListOfNumbers([1, 2, 3]));
// }

typedef UserInfo = Map;

String sayHi(UserInfo userInfo) {
  return "Hi ${userInfo['name']}";
}

void main() {
  print(sayHi({"name": 'korea'}));
}
