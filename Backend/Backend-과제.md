# Backend-과제

## 개발 환경 구축

1. NodeJS 설치

    - https://nodejs.org/ko/ 에 접속한다. 
    
    - LTS버전 다운로드를 클릭한다

    - 설치 마법사 창이 뜨면 **아무것도 건들지 말고 다음** 만 누른다 (기본설정대로 까는게 제일 좋음)

    - 설치가 완료되면 명령 프롬프트를 실행시킨다

    - node -v를 입력해서 node의 버전이 제대로 뜨면 성공

    - npm -v도 입력해 봐서 npm이 제대로 깔렸는지도 확인해본다

    - https://javacpro.tistory.com/62 <- 참고해서 설치하기

2. Visual Studio Code 설치

    - https://code.visualstudio.com/ 에 접속한다.

    - Download for Windows 를 클릭한다

    - 내려받기가 끝났으면 설치 파일을 실행한다

    - 사용자 계정 컨트롤에서 앱 실행을 허용할지 물으면 예 버튼을 누른다

    - 설치 화면이 뜨면 **계속 다음 버튼을 눌러** 진행한다

    - 설치 버튼을 눌러서 설치를 진행한다

    - https://kcmschool.com/195 <- 참고해서 설치하기

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
### 익명 함수

- 함수를 선언하는 방식에는 함수 선언식과 함수 표현식이 있다.

``` javascript
// 함수 선언식 (C언어와 비슷)
function func(a, b) {
    return a + b;
}

// 함수 표현식
const func = function (a, b) {
    return a + b;
}
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
### 화살표 함수

- 함수 선언에서 function 키워드 대신 화살표를 사용하여 보다 간략하게 함수를 선언할 수 있음

- 화살표 함수는 익명 함수로만 사용 가능. 따라서 화살표 함수를 호출하기 위해선 함수 표현식을 사용함

``` javascript
const func = function (a, b) {
    return a + b;
} // function

const arrowFunc = (a, b) => {
    return a + b;
} // arrow function

func(1, 2); // 3

arrowFunc(1, 2); // 3
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