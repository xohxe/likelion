//
//  closer01.swift
//  likelion
//
//  Created by 김소혜 on 2023/10/24.
//

import Foundation

let add: (Int, Int) -> Int = { $0 + $1 }

let numbers = [1, 2, 3, 4, 5]


// 클로저 예제 02 : 모든 요소에 10을 곱
let answer02 = numbers.map{ $0 * 10 }

// 클로저 예제 03 : 배열의 홀수 요소만 필터링
let answer03 = numbers.filter{ $0 % 2 == 0}

// 클로저 예제 04 : 배열의 요소들의 합
let answer04 = numbers.reduce(0, {$0 + $1})

// 클로저 예제 05 : 문자열로 변환
let answer05 = numbers.map{ String($0) }



