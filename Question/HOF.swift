//
//  HOF.swift
//  likelion
//
//  Created by 김소혜 on 2023/10/30.
//

import Foundation

func HOF_01(){
    // 맵, 필터, 리듀스 예제 01
    let array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    func sumOfSquaresOfOdds(array: [Int]) -> Int {
        let sum = array.filter{$0 % 2 == 0}.reduce(0, {$0 + $1})
        return sum
    }
    print("\(sumOfSquaresOfOdds(array: array))")
}


func HOF_02(){
    // 맵, 필터, 리듀스 예제 02 : 모음 제거 후 역순으로
    let string = "Hello World"
    func reverseWithoutVowels(string: String) -> String {
        let str = string
        let vowel = ["a","e","i","o","u"]
        var hi = ""
        for el in vowel{
            hi = str.replacingOccurrences(of: el, with: "")
        }
        return hi
        //return hi.reversed()
    }
    print("\(reverseWithoutVowels(string: string))")
}

func HOF_03(){
    // 맵, 필터, 리듀스 예제 03
    // 주어진 딕셔너리에서 값이 짝수인 값의 함수를 작성하세요.

    func sumOfKeysWithEvenValues(dictionary: [String: Int]) -> Int {
         return 2
    }

    let dictionary = ["a": 1, "b": 2, "c": 3, "d": 4, "e": 5]
    
    //print("\(sumOfKeysWithEvenValues(dictionary:dictionary))")
}

