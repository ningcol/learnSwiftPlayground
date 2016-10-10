//: [Previous](@previous)

import Foundation
/***************************for循环*************************/
// 去掉了C语言风格的循环( ..< 区间运算符,详见:02-预算符)
for i in 0..<10{
    print(i)
}

print("----步长循环-----")
// 递增(步数为2)
for i in stride(from: 0, to: 12, by: 2) {
    print(i)
}
// 递减
for i in stride(from: 12, to: 0, by: -2) {
    print(i)
}

print("----反序循环----")
let range = 0...10
// 反序循环
for i in range.reversed(){
    print(i)
}

/***************************while循环*************************/
print("----while循环----")
var n = 2
while n < 100 {
    n=n * 2
}
print(n)

/***************************epeat-while循环*************************/
//它和 while 的区别是在判断循环条件之前，先执行一次循环的代码块。然后重复循环直到条件为 false
var m = 2
repeat {
    m = m * 2
} while m < 100
print(m)






//: [Next](@next)
