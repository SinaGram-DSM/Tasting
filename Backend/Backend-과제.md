# Backend-과제

## 개발 환경 구축

NodeJS 설치

    - https://nodejs.org/ko/ 에 접속한다. 
    
    - LTS버전 다운로드를 클릭한다

    - 설치 마법사 창이 뜨면 아무것도 건들지 말고 다음 만 누른다 (기본설정대로 까는게 제일 좋음)

    - 설치가 완료되면 명령 프롬프트(cmd)를 실행시킨다

    - node -v를 입력해서 node의 버전이 제대로 뜨면 성공

    - npm -v도 입력해 봐서 npm이 제대로 깔렸는지도 확인해본다

    - https://javacpro.tistory.com/62 <- 참고해서 설치하기

---
## 자바스크립트 기초 문법

### 체험 때 꼭 알아야 할 것들

### REPL

- NodeJS를 설치하고 나서 자바스크립트를 실행시키는 방법

- visual studio code 에서 **Ctrl + `** 을 누르면 터미널이 열림

- 터미널에서 node를 입력

```
Welcome to Node.js v~
Type ".help" for more information
>
```
- 라는 창이 뜨면 여기서 자바스크립트 코드를 직접 입력하여 자바스크립트를 실행할 수 있음

```
> 1 + 2
3
> 'a' + 'b'
'ab'
>
```

- REPL을 종료하려면 **Ctrl + C**를 두 번 누르거나 **Ctrl + D**를 한번 누르면 됨

- 자바스크립트 파일을 실행시키는 방법

```
PS C:/...> node 파일명
```
---
### 변수 선언

- 자바스크립트에선 var, let, const로 변수를 선언할 수 있으며, 타입은 직접 지정하지 않아도 된다.

``` javascript
var a = 1;

let b = 1;

const c = 1;
```

- var, let, const로 변수를 선언할 수 있지만, 보통은 let과 const만 사용하는 것이 좋다.

- https://hianna.tistory.com/314 <- 꼭 볼것

---
### 출력

- 자바스크립트에선 출력할 때 console.log() 를 사용해서 출력함 (C언어의 printf()와 비슷함)

``` javascript
console.log(1); // 1
```
---
### 함수

- 하나의 로직(코드)을 재실행 할 수 있게 만들어 준 것

- 코드의 재사용성을 높여준다

``` javascript
// 선언
function func(a, b) {
    console.log("func");
    return a + b;
}

// 호출
func(1, 2);
```
- func라는 이름의 함수에 a와 b라는 인자를 받고, func를 출력한 후 a + b를 반환한 코드

- 함수명(인자) 로 선언한 함수를 호출할 수 있다.
---
### 익명 함수

- 함수를 선언하는 방식에는 함수 선언식과 함수 표현식, Function 생성자가 있다.

``` javascript
// 함수 선언식
function func(a, b) {
    return a + b;
}

// 함수 표현식
const func = function (a, b) {
    return a + b;
}

// Function 생성자
const func = new Function('a', 'b', 'return a + b');
```

- 이 때 함수 표현식에서 function의 이름을 생략한 것을 익명 함수라고 함 (즉시 실행이 필요할 때 사용)
---
### 콜백 함수

- 함수 안에서 어떤 특정한 시점에 호출되는 함수. 보통 함수의 매개변수로 전달됨

``` javascript 
function plus(a, b, callback) {
    let sum = a + b;
    callback(sum);
}

plus(1, 2, function(result) {
    console.log(result);
}); // 3
```
---

### 객체

- 키(key)와 값(value)으로 이루어진 프로퍼티의 집합

``` javascript
const obj = {
    name: "홍길동",
}
// 여기서 name이 키, 홍길동이 값. 키와 값을 묶어서 프로퍼티라고 부른다
```

- 자바스크립트의 거의 모든 것이 객체임

- 자바스크립트에선 객체 안의 프로퍼티에 접근할 때 . 을 사용함

``` javascript
const obj = {
    name: "홍길동",
}

console.log(obj.name); // 홍길동
```

- 객체의 키에 대응하는 값으로 함수가 들어갈 수도 있음

``` javascript
const obj = {
    name: "홍길동",
    sayHello() {
        console.log("Hello");
    }
}

obj.sayHello(); // Hello
```

- this 를 이용하여 해당 객체의 키값에 접근할 수 있음

``` javascript
const obj = {
    name: "홍길동",
    sayHello() {
        console.log("Hello" + this.name);
    }
}

obj.sayHello(); // Hello 홍길동
```
---


이해 안가면 선배한테 슬랙이나 페메로 물어보세요 선배들이 슬랙 페메 안보면 직접 와도됨

꼭 이해 못해도 괜찮아요. 이런 것도 있구나 하는 마인드로 한번 쭉 읽어봐 주세요.
