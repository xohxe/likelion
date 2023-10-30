//
//  class05.swift
//  likelion
//
//  Created by 김소혜 on 2023/10/24.
//

import Foundation

func OPP_05(){
    // 상속 예제 05
    class Animal{
        let name : String
        
        init(name:String){
            self.name = name
        }
        func makeSound(){
            print("...")
        }
    }

    class Cat: Animal{
        override func makeSound() {
            print("야옹")
        }
    }
    class Dog : Animal{
        override func makeSound() {
            print("멍멍")
        }
    }


    let cat: Animal = Cat(name: "나비")
    let dog: Animal = Dog(name: "바둑")
    cat.makeSound() // 야옹
    dog.makeSound() // 멍멍
}

func OPP_06(){
    
    // 상속 예제 06
    class Person {
        let name : String
        let age : Int
        
        init(name: String, age: Int) {
            self.name = name
            self.age = age
        }
        func introduce(){
            print("저는 \(name)이고, \(age)살입니다.")
        }
    }

    class Student : Person{
        
        var grade, classNumber : Int
        
        init(name: String, age: Int, grade:Int, classNumber:Int) {
            self.grade = grade
            self.classNumber = classNumber
            super.init(name: name, age: age)
        }
        
        override func introduce() {
            super.introduce()
            print("저는 \(grade)학년 \(classNumber)반입니다.")
        }
    }

    class Teacher : Person{
        
        var subject : String
        
        init(name: String, age: Int, subject: String) {
            self.subject = subject
            super.init(name: name, age: age)
        }
        override func introduce() {
            super.introduce()
            print("저는 \(subject)선생님 입니다.")
        }
        
    }


    let student: Person = Student(name: "민수", age: 15, grade: 2, classNumber: 3)
    let teacher: Person = Teacher(name: "영희", age: 25, subject: "수학")
    student.introduce() // 저는 민수이고, 15살입니다. 저는 2학년 3반입니다.
    teacher.introduce() // 저는 영희이고, 25살입니다. 저는 수학 선생님입니다.
}

func OPP_07(){
    
    // 상속 예제 07
    class Area{
        let color: String
        let base, height : Float
        
        init(color: String, base: Float, height: Float) {
            self.color = color
            self.base = base
            self.height = height
        }
        
        func area() -> Float {
            return base * height
        }
    }
    class Triangle : Area{
        
        override func area() -> Float{
            super.area() / 2
        }
    }
    class Rectangle : Area{
        
    }

    // 예시
    let triangle = Triangle(color: "red", base: 3, height: 4)
    let rectangle = Rectangle(color: "blue", base: 5, height: 6)
    print(triangle.area()) // 6.0
    print(rectangle.area()) // 30.0
}



//struct JsonData: Codable{
//    let title:String
//}


