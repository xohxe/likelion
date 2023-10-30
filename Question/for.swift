import Foundation



func for_01 (){
    func sumInt(_ num1:Int, _ num2:Int) -> Int {
        return num1 + num2
    }
    print("=== Plus Game ===")
    
    while true{
       let num_1 = Int.random(in: 0...10)
       let num_2 = Int.random(in: 0...10)
   
       while true {
           let question = inputInt(num_1,num_2)()
           let answer = sumInt(num_1,num_2);
   
           if(question == answer){
               print("Success")
   
               let keep = inputString("계속 하시겠습니까? (Y/N)")()
               if keep == "N" {
                   print("종료되었어요.")
                   break
               }
               break
   
           }else{
               print("Fail")
               let keep = inputString("계속 하시겠습니까? (Y/N)")()
               if keep == "N" {
                   print("종료되었어요.")
                   break
               }
               continue
           }
       }
   }
}
 

// for 예제 00
func for_00(){ 
    // 거꾸로 출력
    for n in (53...96).reversed() {
       print(n, terminator: " ")
    }
    
    // 홀수만 출력
    for m in 21...57{
        if (m % 2 != 0) {
            print(m, terminator: " ")
        }
    }
    // 정수 입력
    let inputValue = inputLine("정수입력 :")

    for k in 1...inputValue(){
        print(k, terminator:" ")
    }

     //그 수의 배수를 출력하는 함수
    for f in 1...10{
        print(f * 5, terminator:" ")
    }

    // 3의 배수 합.
    var result=0
    for j in 1...100{
        if(j % 3 == 0){
            result += j
        }
    }
    print(result)

}
 
 
func for_03(){
    // 구구단 2단
    for z in 1...9{
        print("2 * \(z) = \(z * 2)")
    
    }
}
func for_04(){
    // 예제 04
    let inputDan = inputLine("단 입력 :")()
    for k in 1...9{
        print(inputDan,"*",k,"=",inputDan * k)
    }
}

func for_05(){
    // 예제 05
    for m in 1...9{
        print("===\(m)단===")
        for n in 1...9{
            print("\(m) * \(n) = \(n * m)")
        }
    }
}

func for_06(){
    // 예제 06
    for p in 1...9{
        print("\(p)단:",terminator: " ")
        for q in 1...9{
            let space = String(format: "%2d", p * q)
            print("\(p) * \(q) = \(space)", terminator: " ")
        }
        print(" ")
    }
}

func for_07(){
    // 예제 07
    var inputInt = inputLine("정수 입력 :")

    func findDivisor(_ number: Int) -> [Int] {
        var divisors : [Int] = []
        for k in 1...number{
            if number % k == 0{
                divisors.append(k)
            }
        }
        return divisors
    }

    var result = findDivisor(inputInt()).map{ String($0)}.joined(separator: " ")
    print("\(String(describing: inputInt))의 약수: \(result)")


}
func for_08(){
    //     예제 08
//    for a in 2...30 {
//        var b = findDivisor(a).map{ String($0)}.joined(separator: " ");
//        print("\(a)의 약수 : \(b)")
//    }

}




// 예제 09
func for_09(){
    
    func printStar01(_ n: Int){
        for i in 1...n{
            let stars = String(repeating: "*", count: i)
            print(stars)
        }
    }
    func printStar02(_ n: Int){
        for i in (1...n).reversed(){
            let stars = String(repeating: "*", count: i)
            print(stars)
        }
    }
    func printStar03(_ n: Int){
        for i in 1...n{
            let spaces = String(repeating: " ", count: n - i)
            let stars = String(repeating: "*", count: i)
            print(spaces + stars)
        }
    }
    func printStar04(_ n: Int){
        for i in (1...n).reversed(){
            let spaces = String(repeating: " ", count: n - i)
            let stars = String(repeating: "*", count: i)
            print(spaces + stars)
        }
    }

    func printStarSum(_ n:Int){
        for i in 1...n{
            let spaces = String(repeating: " ", count: n - i)
            let stars = String(repeating: "*", count: i)
            print(spaces + stars  + stars)
        }
        for i in (1...n).reversed(){
            let spaces = String(repeating: " ", count: n - i)
            let stars = String(repeating: "*", count: i)
            print(spaces + stars + stars)
        }
    }

    
    printStar01(5)
    printStar02(5)
    printStar03(5)
    
    printStarSum(5)

     
   // print("\(printStar04(5))\(printStar02(5))",terminator: "")

    printStar03(5)
    printStar01(5)
    printStar04(5)
    printStar02(5)
    
  //  for i in 1...5 { print( String(repeating: " ", count: 5 - i) + String(repeating: "*", count: i) ) }
//    for c in 1...5{
//        for d in 1...5{
//            print("*",d,terminator: "")
//        }
//        print(" ")
//    }

}

// for 예제 10 : 369게임
func for_10(){
    for d in 0...99{
        let num = String(format: "%02d", d)
        var star = ""
        let count = num.filter { $0 == "3" || $0 == "6" || $0 == "9"}.count
        star += String(repeating: "*", count: count)
        print("\(num)\(star)")
    }

}


