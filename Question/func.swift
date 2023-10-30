//
//  func01.swift
//  likelion
//
//  Created by 김소혜 on 2023/10/30.
//

import Foundation

//var inputA = inputLine("1번째 수:")
//var inputB = inputLine("2번째 수:")
// 
func func_01(){
    
    // 함수 예제 01
    func addNumber(_ a: Int, _ b: Int) -> Int {
        var sum = 0
        sum = a + b
        return sum
    }
    
    print("두 수의 합은 \(addNumber(inputA(),inputB()))")
}
 
func func_02(){
    // 함수 예제 02
    func largeNumbers(_ a: Int, _ b: Int) -> Int {
        var result = 0
        if a > b {
            result = a
        }else if (a < b){
            result = b
        }
        return result
    }
    
    print("두 수의 보다 큰 수는 \(largeNumbers(inputA(),inputB()))")
}
  
func func_03(){
    // 함수 예제 03
    func close10(_ a: Int, _ b: Int) -> Int {
     
        var result = 0
        let bal1 = abs(10 - a)
        let bal2 = abs(10 - b)
        
        if bal1 > bal2 {
            result = b
        }else if bal1 < bal2{
            result = a
        }else{
            result = 0
        }
        return result
    }
    print("두 수 중 10에 가까운 수는 \(close10(inputA(), inputB()))")
}
 

func func_04(){
    // 함수 예제 04
    func powerN(_ a: Int, _ b: Int) -> Int{
       return  Int(pow(Float(a), Float(b)))
    }
    print("a의 b제곱은 \(powerN(inputLine("a :")(), inputLine("b :")()))")
}
 
func func_05(){
    // 함수 예제 05
    func getAbsoluteValue(_ a: Int, _ b: Int) -> Int{
       return abs(a - b)
    }
    
    print("|a-b| = \(getAbsoluteValue(inputLine("a :")(), inputLine("b :")()))")
}
 
func func_06(){
    // 함수 예제 06
   func isDivide(_ a: Int, _ b: Int) -> Bool {
        if a % b == 0 {
            return true
        }else{
            return false
        }
    }
    print("앞의 정수가 뒤의 정수로 나누어지는지? : \(isDivide(inputA(), inputB()))")
}



 

func func_07(){
    // 함수 예제 07
    func getDivisor(_ number: Int) -> [Int] {
        var divisors : [Int] = []
        for k in 1...number{
            if number % k == 0{
                divisors.append(k)
            }
        }
        return divisors
    }
    
    print("\(randomValue)의 약수들 \(getDivisor(randomValue))")
}

func func_08(){
    //함수 예제 08 약수들의 합
    func isDivide(_ a: Int, _ b: Int) -> Bool {
         if a % b == 0 {
             return true
         }else{
             return false
         }
    }
    func getDivisor(_ number: Int) -> [Int] {
        var divisors : [Int] = []
        for k in 1...number{
            if number % k == 0{
                divisors.append(k)
            }
        }
        return divisors
    }
    func getSumOfDivisors(_ number: Int) -> Int {
        var sum = 0
        for i in 1...number {
            if isDivide(number, i){
                sum += i
            }
        }
       return sum
    }

    print("\(randomValue)의 약수의 합: \(getSumOfDivisors(randomValue))")


}



func func_09(){
    // 함수예제 09
    
    func isDivide(_ a: Int, _ b: Int) -> Bool {
         if a % b == 0 {
             return true
         }else{
             return false
         }
    }
    func getDivisor(_ number: Int) -> [Int] {
        var divisors : [Int] = []
        for k in 1...number{
            if number % k == 0{
                divisors.append(k)
            }
        }
        return divisors
    }
    func findDivisor(_ number: Int) -> [Int] {
        var divisors : [Int] = []
        for k in 1...number{
            if number % k == 0{
                divisors.append(k)
            }
        }
        return divisors
    }
    
    func getSumOfDivisors(_ number: Int) -> Int {
        var sum = 0
        for i in 1...number {
            if isDivide(number, i){
                sum += i
            }
        }
       return sum
    }
    
    
    func getPerfectNumber( _ number: Int) -> [Int] {
        var num : [Int] = []
        for i in 2...number {
            if(getSumOfDivisors(i) - getDivisor(i).last! == getDivisor(i).last! ){
                num.append(i)
            }
        }
       return num

    }
     
   
    print("2~1000까지의 완전수: \(arrayToString(getPerfectNumber(1000)))")
    
 
}


func func_10(){
    func getDivisor(_ number: Int) -> [Int] {
        var divisors : [Int] = []
        for k in 1...number{
            if number % k == 0{
                divisors.append(k)
            }
        }
        return divisors
    }
    
    // 함수 예제 10 : 소수는 약수의 개수가 2개여야 함
    func getPrimeNumber(_ number: Int) -> [Int] {
        var num : [Int] = []
        for i in 2...number {
            if (getDivisor(i).count == 2) {
                num.append(i)
            }
        }
        return num
    }
    print("2~30까지의 소수: \(arrayToString(getPrimeNumber(30)))")
      
}
