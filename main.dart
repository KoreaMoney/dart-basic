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

