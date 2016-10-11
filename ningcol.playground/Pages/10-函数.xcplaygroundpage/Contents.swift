//: [Previous](@previous)

import Foundation

/***************************函数*************************/
//格式: 函数名(形参列表) -> 返回值类型
func sum(x: Int ,y: Int) -> Int{
    return x + y
}
print(sum(x: 10, y: 20))

/***************************外部参数*************************/
/************************************************************
    1.外部参数是在形参前加一个名字
    2.外部参赛不影响内部细节
    3.外部参数让调用更加直观
 ************************************************************/
func sum(num x: Int ,num y: Int) -> Int{
    return x + y
}
print(sum(num: 30, num: 40))


// 外部参数使用 "_" 会忽略形参
func sum(_ x: Int ,_ y: Int) -> Int{
    return x + y
}
print(sum(40, 50))

/***************************默认值*************************/
// 不指定参数的值就为默认值
func sum1(x: Int = 1 ,y: Int = 2) -> Int{
    return x + y
}
print(sum1())
print(sum1(x: 10, y: 10))
print(sum1(x: 20))
print(sum1(y: 20))

/***************************无返回值*************************/
// 1.直接省略
func person(){
    print("ningcol")
}
// 2.包含括号
func person1() ->(){
    print("ningcol")
}
// 3.Void
func person2() ->Void{
    print("ningcol")
}

print(person())
print(person1())
print(person2())


//: [Next](@next)
