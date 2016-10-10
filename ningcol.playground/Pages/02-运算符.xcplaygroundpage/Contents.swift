//: [Previous](@previous)

import Foundation
/**************************基本运算符*************************/
var a = 5
let b = 3

// 1.赋值运算符
let c = b

// 2.加减乘除
1 + 2
5 - 3
2 * 3
10.0 / 2.5

// 2.1 任何情况下都不会做隐式转化，必须以相同类型进行计算
let num1 = 1
let num2 = 2.2
let num3 = Double(num1) + num2

// 2.2 必须要显式类型的转化
let j = 2.2
let i:Float = 1.2
i + Float(j)

// 3.求余运算
a % b

// 4.负号运算
let minusB = -b

// 5.组合赋值运算
a += 2

// 6.比较运算
1 == 1
2 != 1
2 > 1
1 < 2
1 >= 1
2 <= 1

// 7.三目运算
let d = a > b ? 100 : 200

// 8.空合运算(Nil Coalescing Operator)
/*********************************************************************
    1.空合运算符( a ?? b )将对可选类型 a 进行空判断(可选项内容详见:04-可选项)
    2.如果 aName 为 nil，则执行??后面的，否则执行aName（注意??两边都有空格）   
********************************************************************/
var aName: String? = "ningcol"
//var aName: String? = nil
let bName = aName ?? "aNameIsNil"

// 9.区间运算
/*********************************************************************
    1.闭区间运算符( a...b )定义一个包含从 a 到 b (包括 a 和 b )的所有值的区间
    2.半开区间( a..<b )定义一个从 a 到 b 但不包括 b 的区间
 ********************************************************************/
for index in 1...5 {
    print(index)
}

for index in 1..<5 {
    print("半开区间:\(index)")
}

// 10.逻辑运算
/*********************************************************************
    1.逻辑非(!a):布尔值取反
    2.逻辑与( a && b ):只有 a 和 b 的值都为 true 时，整个表达式的值才会是 true
    3.逻辑或( a || b ):两个逻辑表达式的其中一个为 tru e ，整个表达式就为 true
 ********************************************************************/
let allowedEntry = false
let enteredDoorCode = true

if !allowedEntry {
    print("ACCESS DENIED")
}

if allowedEntry && enteredDoorCode {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

if allowedEntry || enteredDoorCode {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}












//: [Next](@next)
