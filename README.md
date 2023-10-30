# Swift 기초 문법 & 알고리즘


멋쟁이사자처럼 앱스쿨 기초 문법 및 알고리즘 문제를 모아둔 저장소입니다.   

Dictionary로 문제리스트를 정의하여, 각 문제에서 저장한 함수를 호출하는 방식으로 작성된 코드이며, 오류사항이 있다면 언제든 이슈에 남겨주세요.






## 1. 사용법


#### 1-1. 문제 파일 관리

실제 제출할 때는, 문제를 감싼 함수 안 내용을 제출해주면 됩니다.   
코드 제출용으로도 활용하기 위해, 매개변수와 반환값을 없앴습니다.

```swift
    func for_01(){
        // 작성할 코드 !
    }

```

#### 1-2. 딕셔너리 생성

`main.swift`의 `questionDict` 내에 문제와 print할 함수를 넣어줍니다.

```swift
let questionDict: [String : () -> Void] = [
    "함수 예제 01" : func_01,
    "함수 예제 02" : func_02,
]


func question(_ question: String) {
    print("======== Q \(question) 정답 ========")
    if let closure = questionDict[question] {
        closure()
    }else{
        print("Question이 없어요.")
    }
}

let printQuestion = "함수 예제 01"
question(printQuestion)
```


#### 1-3. 

`let printQuestion = "여기에 호출할 문제를 입력해주세요."`
 
호출할 키를 입력해주면, 터미널에 원하는 결과물이 출력됩니다.
 
```swift
======== Q 함수 예제06 정답 ========
a : 1
b : 2
a의 b제곱은 1
```




## 유의사항

- 실행시킬 함수가 있는 파일은 Target Membership을 해제시켜주어야합니다.
- 중첩 함수로 작성되어, 공통으로 작성되는 코드는 별도로 작성해줘야합니다.





