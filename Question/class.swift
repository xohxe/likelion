import Foundation


// class 00
func class_00(){
    class PigBank{
        var saveMoney : Int = 0
        
        init(money: Int){
            saveMoney = money
        }
        func show(){
            print("현재 잔액: \(saveMoney)")
        }
        func deposit(money: Int){
             saveMoney += money
        }
        // 잔액 부족 사이즈를 표시해줘야!
        func withdraw(money: Int){
            if(saveMoney >= money){
                saveMoney -= money
            }else{
                print("잔액부족")
                saveMoney = 0
            }
        }
        
    }

    let pigBank : PigBank = PigBank(money: 0)

    pigBank.deposit(money: 1500)
    pigBank.deposit(money: 700)
    
    pigBank.show()
    
    pigBank.withdraw(money: 2300)
    pigBank.show()

}


 
// class 예제 01 - 03
func class_01_03(){
    
    class Student{
        var name: String = ""
        var number: String = ""
        var age: Int = 0
        var scoreSwift: Int = 0
        var scoreiOS: Int = 0
        var scoreWeb: Int = 0

        func show(){
            let subjects:[String:Int] = ["Swift" : scoreSwift, "iOS":scoreiOS, "Web":scoreWeb]
            subjects.forEach{ subject in
                print("\(name)의 \(subject.key)점수는 \(subject.value)점입니다.")
            }

        }
    }
    
    let student1 = Student()
    student1.name = "홍길동"
    student1.number = "20200677"
    student1.age = 22
    student1.scoreSwift = 50
    student1.scoreiOS = 89
    student1.scoreWeb = 77
    
    print("\(student1.name)님 안녕하세요.")
    print("[ \(student1.number), \(student1.age)살 ]")
    student1.show()
    print("===========")
    
    let student2 = Student()
    student2.name = "김영희"
    student2.number = "20190541"
    student2.age = 26
    student2.scoreSwift = 90
    student2.scoreiOS = 85
    student2.scoreWeb = 70
    
    
    print("\(student2.name)님 안녕하세요.")
    print("[ \(student2.number), \(student2.age)살 ]")
    student2.show()
    
}


// Class 예제 04
func class_04(){
    class Person{
        var name : String = ""
        var age : Int = 0

        init(name: String, age: Int) {
            self.name = name
            self.age = age
        }
        func getName() -> String {
            return name
        }
        func setName(name: String) {
            self.name = name
        }
        func getAge() -> Int{
            return age
        }
        func setAge(age: Int){
            self.age = age
        }
    }

    let person1 = Person(name:"홍길동",age: 25)
    let person2 = Person(name:"김영희",age:27)

    print("st1 객체 학생 이름: \(person1.name), 나이: \(person1.age)")
    print("st2 객체 학생 이름: \(person2.name), 나이: \(person2.age)")
    
    
}


// Class 예제 05
func class_05(){
    class Calculator{
        var num1 : Int = 0
        var num2 : Int = 0
        
        init(num1: Int, num2:Int){
            self.num1 = num1
            self.num2 = num2
        }

        func setNum1(num1: Int) {
            self.num1 = num1
        }
        func setNum2(num2: Int){
            self.num2 = num2
         }
        func sum() -> Int{
            return num1 + num2
        }
        func sub() -> Int{
            return num1 - num2
        }
        func mul() -> Int{
            return num1 * num2
        }
        func div() -> Int{
            return num1 / num2
        }
    }

    let cal = Calculator(num1:2,num2:3)
    print("초기값의 합: \(cal.sum())")
     

    cal.setNum1(num1: 9)
    cal.setNum2(num2: 4)

    print("num1,num2 저장 및 변경 후,")
    print("합 : \(cal.sum())")
    print("차 : \(cal.sub())")
    print("곱 : \(cal.mul())")
    print("나누기 : \(cal.div())")
    
}


 
//  Class 예제 06
func class_06(){
    class TV{
       var name : String
       var year : Int
       var size:  Int
       
       init(name:String,year:Int, size:Int){
           self.name = name
           self.year = year
           self.size = size
       }
       func show() -> String {
          return "\(name)에서 만든 \(year)형 \(size)인치 TV"
       }
       
   }

    let myTV = TV(name: "LG", year: 2023, size: 48)
    print(myTV.show())
}
