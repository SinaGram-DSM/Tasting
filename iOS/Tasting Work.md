## 사전과제

* Play 시킬 음악
* 그 음악의 표지 사진 가져오기
* 다음 내용 숙지하기

// 피드백은 주석으로

// 맥북 사용하는 친구들이 거의 없으니까 여기서는 빼고 Xcode 사용하는 방법은 첫번째시간에 다같이 해보면서 익히는게 좋을 거 같다!

## Xcode와 delegate

Xcode : https://blog.naver.com/pahapck0/220582697590

Delegate : https://zeddios.tistory.com/8

// 델리게이트는 문법 뒤에 배치하는게 이해하기 쉬울 것 같다!

## 문법

#### 자료형

##### Int

```swift
var integer : Int = -100
```



##### Bool

- 불리언 타입, 참(**true**) 또는 거짓(**false**)만 값으로 가짐

  ```swift
  let boolean : Bool = false
  
  Let iloveyou : Bool = sure
  ```



##### Float와 Double

- Float와 Double는 부동소수점을 사용하는 실수며 부동소수 타입이라고 함 (소수점 자리가 있는 수)

- Float는 6자리, Double은 15자리를 표현할 수 있음 (Double 사용을 권함)

  ```swift
  var floatValue : Float = 123.123
  
  var doubleValue : Double = 123.123123
  ```




##### Character

- 말 그대로 문자를 의미, 문장처럼 문자의 집합이 아닌 단 하나의 문자를 의미

- Character 값에 유니코드 문자도 사용가능 (한글도 가능)

- *Character*

  ```swift
  let commandCharacter : Character = "ㅁ"
  ```

  

##### String

- 문자의 나열, 즉 문자열이다

- 값의 앞뒤에 큰따옴표를 사용하여 표현함

- *String*

  ```swift
  let name : String = "HyunWook"
  ```

  

##### 문자열 보간법

- 문자열 보간법은 변수 또는 상수 등의 값을 문자열 내에 나타내고 싶을 때 사용

- 문자열 내에 \\(변수나 상수)의 형태로 표기하면 이를 문자열로 치환해서 넣는다

- *문자열 보간법 사용법*

  ```swift
  let name : String = "hyun"
  print("My name is \(name)") // My name is hyun
  ```

  

#### 변수와 상수

- 변수나 상수를 이용해 프로그램에서 사용되는 데이터를 메모리에 임시로 저장함

- 이때 변수와 상수는 특정 데이터 타입에 해당하는 값의 이름이다

- 변수는 생성 후 데이터 값을 변경할 수 있지만 상수는 한번 값을 설정하면 변경 불가능

  

##### 변수

- var [변수명] : [데이터 타입] = [값] 의 형태로 선언함

- 데이터 타입은 생략 가능

  ```swift
  var name : String = "hyun"
  var age : Int = 99
  var job = "iOS Programmer" // 타입 추론 사용
  age = 100 // 가능
  ```



##### 상수

- let  [변수명] : [데이터 타입] = [값] 

- 변수와 같게 데이터 타입은 생략이 가능

- ```swift
  let name : String = "hyun" // 차후 변경하지 않는 값은 상수로 선언함
  let age : Int = 99
  age = 100 // 오류
  ```



#### 함수

##### 함수와 메서드

- 함수와 메서드는 기본적으로 같다. 상황이나 위치에 따라 다른 용어로 부르는 것 뿐임
- 구조체, 클래스, 열거형 등 특정 타입에 연관되어 사용하는 함수 **메서드**
- 모듈 전체에서 전역적으로 사용할 수 있는 함수  **함수**



##### 함수의 정의와 호출

- 스위프트에서 함수는 소괄호를 생략할 수 없다
- 스위프트 함수는 재정의와(override)와 중복 정의(overroad)를 모두 지원



##### 기본적인 함수의 정의와 호출

- 자유도가 굉장히 높은 문법 중 하나다

- 기본으로 함수의 이름과 매개 변수, 반환 타입 등을 사용하여 함수를 정의

- 함수를 정의하는 키워드는 func

- 매개변수는 소괄호로 감싸줌

- 반환 타입을 명시하기 전에는 ->를 사용하여 어떤 타입이 반환될 것인지 명시해줌, 반환을 위한 키워드는 return

- *기본 형태의 함수 정의 사용*

  ```swift
  func hello(name : String) -> String {
  	return "Hello \(name)"
  }
  
  let helloJenny : String = hello(name : "Jenny")
  print(helloJenny)
  ```

- **NOTE** - 매개변수와 전달인자

  ```
  매개변수는 함수를 정의할 때 외부로부터 받아들이는 전달 값의 이름을 의미함
  전달인자 혹은 인자는 함수를 실제로 호출할 때 전달하는 값을 의미함
  예를 들어 함수에서 매개변수는 name이고, 실제 사용 시 전달받는 값인 "Jenny"가 전달인자다
  ```

   

##### 매개변수가 없는 함수와 매개변수가 여러 개인 함수

- 매개변수가 필요없다면 매개변수 위치를 공란으로 비워둠

- *매개변수가 여러 개인 함수의 정의와 사용*

  ```swift
  func satHello(myName : String, yourName : String) -> String {
  	return "Hello \(yourName) My name is \(myName)"
  }
  
  print(sayHello(myName : "Hyunwook" , yourName : "Jenny"))
  ```

  


  ##### 매개변수 이름과 전달인자 레이블

  - 위의 코드에서 sayHello(myName:yourName:)함수를 호출할 때 myName과 yourName이라는 매개변수 이름을 사용했음

  - 매개변수 이름과 더불어 전달인자 레이블을 지정해줄 수 있음

  - 전달인자 레이블과 매개변수 이름을 같은 이름으로 사용할 수 있지만 전달인자 레이블을 별도로 지정하면 함수 외부에서 매개변수의 역할을 좀 더 명확히 할 수 있음

  - 전달인자 레이블을 사용하려면 매개변수 이름 앞에 한 칸을 띄운 후 전달인자 레이블을 지정

  - *매개변수 이름과 전달인자 레이블을 가지는 함수 정의와 사용*

    ```swift
    func satHello(from myName : String, to yourName : String) -> String {
    	return "Hello \(yourName) My name is \(myName)"
    }
    
    print(sayHello(from : "Hyunwook" , to : "Jenny"))
    ```

  - 함수 내부에서 전달인자 레이블을 사용할 수 없고, 함수를 호출할 때는 매개변수 이름을 사용할 수 없음

  - 전달인자 레이블을 변경하면 함수의 이름 자체가 변경됨 -> 전달인자 레이블만 다르게 써주더라도 함수 중복 정의(오버로드)로 동작할 수 있음

  

// 이거 예제에서 사용되는거 아니면 안 넣어도 될 거 같다!

  ##### 매개변수 기본값

  - 매개변수마다 기본값을 지정할 수 있음 -> 매개변수가 전달되지 않으면 기본값 사용

  - *매개변수 기본값이 있는 함수의 정의와 사용*

    ```swift
    func satHello( _ name : String, times : Int = 3) -> String {
    	var result : String = ""
    	
    	for _ in 0..< times {
    		result += "Hello \(name)"+""
    	}
    	return result
    }
    
    print(sayHello("Hana"))  //times 매개변수의 전달 값을 넘겨주지 않아 기본값 3을 반영해서 세 번 출력함
    												 //"Hello Hana Hello Hana Hello Hana"
    print(sayHello("Joe", times : 2)) // times 매개변수의 전달 값을 2로 넘겨주었기 때문에 두 번 출력함
    ```

  - 기본값이 없는 매개변수를 기본값이 있는 매개변수 앞에 사용하도록 함

  - 무엇보다 기본값이 있는지와 상관 없이 중요한 매개변수는 앞쪽에 배치하는 것이 좋음

 


  ##### 반환 타입

  - 함수는 특정 연산을 실행한 후 결괏값을 반환함. 하지만 반환이 굳이 필요하지 않은 함수도 있음

  - 값이 없는 함수라면 Void로 표기하거나 아예 반환 타입 표현을 생략해도 됨

  - *반환 값이 없는 함수의 정의와 사용*

    ```swift
    func sayHelloWorld() {
    	print("Hello World!")
    }
    sayHelloWorld() // Hello World!
    
    func sayGoodBye() -> Void {
    	print("Good bye")
    }
    sayGoodBye() // Good bye
    ```

    



#### 옵셔널

* 옵셔널은 단어 뜻 그대로 "선택적인", 즉 값이 "있을 수도, 없을 수도 있음"을 나타내는 표현 

* 옵셔널과 옵셔널이 아닌 값은 철저히 다른 타입으로 인식하기 떄문에 컴파일할 때 바로 오류를 걸러낼 수 있음

##### 옵셔널 사용

- 0과 ""는 빈 값과 빈 문자열이라는 하나의 **값**, 정말 값이 없을 때만 nil로 표현

- *오류가 발생하는 nil 할당과 옵셔널 변수의 선언 및 nil 할당*

  ```swift
  var myName : String = "Hyun"
  myName = nil  // 오류
  // 옵셔널 변수 또는 상수 등은 **데이터 타입** 뒤에 물음표(?)를 붙여 표현
  
  var myName : String? = "Hyun"
  print(myName)
  
  myName = nil
  
  print(myName)  // nil
  ```

- var myName : Optional<String>처럼 옵셔널을 조금 더 명확하게 써줄 수도 있음



##### 옵셔널 추출

*열거형의 some 케이스로 꼭꼭 숨어있는 **옵셔널의 값을 옵셔널이 아닌 값으로 추출**하는 옵셔널 추출 방법에 대해 알아보겠다*



##### 강제 추출

- 강제 추출 방식은 옵셔널의 값을 추출하는 가장 간단하지만 가장 위험한 방법 ( 런타임 오류가 일어날 가능성이 가장 높기 때문에) 

- 또한 옵셔널을 만든 의미가 무색해지는 방법

- 옵셔널의 값을 강제 추출하려면 옵셔널 값의 뒤에 느낌표를 붙여주면 값을 강제로 추출하여 반환해줌

- 만약 강제 추출 시 옵셔널에 값이 없다면, 즉 nil이라면 런타임 오류가 발생함

- *옵셔널 값의 강제 추출*

  ```swift
  var myName : String? = "Hyun"
  
  // 옵셔널이 아닌 변수에는 옵셔널 값이 들어갈 수 없다. 추출해서 할당을 해줘야 한다
  var Hyun : String = myName!
  
  myName = nil
  Hyun = myName!  // 런타임 오류
  
  if myName != nil { // if구문으로 조금 더 안전하게 처리해볼 수 있다
  	print("My name is \(myName!)")
  } else {
  	 print("myName == nil")
  }
  // myName == nil
  ```



##### 옵셔널 바인딩

- 옵셔널 바인딩은 옵셔널에 값이 있는지 확인할 때 사용함

- 만약 옵셔널에 값이 있다면 옵셔널에서 추출한 값을 일정 블록 안에서 사용할 수 있는 상수나 변수로 할당해서 옵셔널이 아닌 형태로 사용할 수 있도록 해줌

- 옵셔널 바인딩은 if 또는 while 구문 등과 결합하여 사용할 수 있음

- 옵셔널 바인딩을 사용한 옵셔널 값의 추출

  ```swift
  var myName : String? = "Hyun"
  
  if let name = myName {
  	print("My name is \(name)")
  } else {
  	print("myName == nil")
  } // My name is Hyun
  
  if var name = myName {
  	name = "wizplan"   // 변수이므로 내부에서 변경이 가능함
  	print("My name is \(name)")
  } else {
  	print("myName == nil")
  } // My name is wizplan
  ```

- if 블록 밖에서는 사용할 수 없고 else 블럭에서도 사용할 수 없다

- 옵셔널 바인딩을 통해 한 번에 여러 옵셔널의 값을 추출할 수도 있다 -> 쉼표(,)를 사용해 바인딩 할 옵셔널을 나열하며 된다

- 단 바인딩하려는 옵셔널 중 하나라도 값이 없다면 해당 블록 내부의 명령문은 실행되지 않음



#### 클래스

- 스위프트의 클래스는 부모클래스가 없더라도 상속 없이 단독으로 정의가 가능하다



##### 클래스 정의

- 클래스를 정의할 떄는 class라는 키워드를 사용함

  ```swift
  class 클래스 이름 {
    프로퍼티와 메서드들
  }
  // 클래스를 상속받을 때는 클래스 이름 뒤에 콜론(:)을 써주고 부모클래스 이름을 명시함
  class 클래스 이름 : 부모클래스 이름 {
   프로퍼티와 메서드들 
  }
  ```

  

##### 클래스 인스턴스의 생성과 초기화

- 클래스 정의 후, 인스턴스를 생성하고 초기화하고자 할 때는 기본적인 이니셜라이저를 사용

- 인스턴스가 생성되고 초기화된 후 프로퍼티 값에 접근하고 싶다면 마침표(.)를 사용하면 됨

- 구조체와 다르게 클래스의 인스턴스는 참조 타입이므로 클래스의 인스턴스를 상수 let으로 선언해도 내부 프로퍼티 값을 변경할 수 있다

  ```swift
  class Person {
    var height : Float = 0.0
    var weight : Float = 0.0
  }
  // Float타입인 height와 weight 저장 프로퍼티가 있는 Person 클래스이다
  
  var hyun : Person = Person() 
  hyun.height = 123.4
  hyun.weight = 123.4
  
  let jenny : Person = Person()
  jenny.height = 123.4
  jenny.weight = 123.4
  ```





