//
//  readLine.swift
//  likelion
//
//  Created by 김소혜 on 2023/10/30.
//

import Foundation

// readLine

// 1. 정수입력
func inputLine(_ message: String) -> () -> Int {
    return{
        print(message , terminator: " ")
        return Int(readLine()!)!
    }
}
// 문자열 입력
func inputString(_ message: String) -> () -> String {
    return{
        print(message, terminator: " ")
        return String(readLine()!)
    }
}

func inputInt(_ num1:Int, _ num2:Int) -> () -> Int {
    return{
        print("\(num1)+\(num2)=", terminator: " ")
        return Int(readLine()!)!
    }
}

func randomInt() -> Int{
    return Int.random(in: 1...100)
}

func arrayToString(_ input: [Int]) -> String {
    return input.map{ String($0)}.joined(separator: " ")
}

