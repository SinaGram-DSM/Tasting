# 안드로이드 스튜디오 설치 가이드
설치가이드: https://m.blog.naver.com/pyj721aa/221275562630  

# JAVA 문법
## 자료형
### Int
```java
int age= 18;
```
### boolean
+ 참 또는 거짓의 값을 갖는 자료형
```java
boolean isSuccess= true;
```
### char
+ String이 있기 때문에 자주 쓰이지 않음
```java
char a='a'
```
### String
+ C언어에서 char와 배열과 대응되는 자료형
```java
String name= "minhee";
```

### Array(배열)
```java
int[] odds= {1, 3, 5, 7, 9};
String[] weeks= {"월", "화", "수", "목", "금", "토", "일"};
```
## Class(클래스)
+ 과자틀 -> 클래스
+ 과자틀에 의해서 만들어진 과자들 -> 객체
```java
public class Animal {

}
...
Animal cat = new Animal();
Animal dog = new Animal();
Animal horse = new Animal();
...
```

## Method (메소드)
+ C언어에서 함수와 비슷한 개념으로 class 내에 존재하는 함수를 메소드라고 한다.
```java
public class Test {
    public int sum(int a, int b) {
        return a+b;
    }

    public static void main(String[] args) {
        int a = 3;
        int b = 4;

        Test myTest = new Test();
        int c = myTest.sum(a, b);

        System.out.println(c);
    }
}
```


# 화면 동작 기능
### 인텐트
공식문서: https://developer.android.com/guide/components/intents-filters?hl=ko  
참고자료:https://medium.com/android-develop-android/android-%EA%B0%9C%EB%B0%9C-8-intent%EB%A5%BC-%EC%82%AC%EC%9A%A9%ED%95%98%EC%97%AC-%EC%95%A1%ED%8B%B0%EB%B9%84%ED%8B%B0-%EC%A0%84%ED%99%98%ED%95%98%EA%B8%B0-4d8b64078427


### 토스트
공식문서: https://developer.android.com/guide/topics/ui/notifiers/toasts  
참고자료: https://blog.naver.com/eominsuk55/220226177277

### 텍스트뷰
공식문서: https://developer.android.com/reference/android/widget/TextView  
참고자료: https://lktprogrammer.tistory.com/141

### 에디트텍스트
공식문서:https://developer.android.com/reference/android/widget/EditText  
참고자료: https://recipes4dev.tistory.com/61

### 버튼
공식문서: https://developer.android.com/reference/android/widget/Button  
참고자료: https://recipes4dev.tistory.com/54