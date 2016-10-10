//: [Previous](@previous)

import Foundation

/***************************可选项*************************/
/*********************************************************************
    1.可选值:可以有值,可以为nil(用 ? 表示可选值)
 ********************************************************************/
// URL 为可选项
let URL = NSURL(string: "http://www.baidu.com/")

// str 为可选项
var str: String? = "ningcol"

// var 的可选项默认为 nil
var a:Int?
print(a)


/*************************** if let *************************/
// if let : 确保 myUrl 有值，才会进入分支
if let myUrl = URL{
    print(myUrl)
}

var aName: String? = "ningcol"
// var aName: String? = nil
var aAge: Int? = 18

if let name = aName,let age = aAge {
    print(name + String(age))
}
// 可以对值进行修改
if var name = aName,let age = aAge {
    name = "lisi"
    print(name + String(age))
    
}
/*************************** guard let *************************/
/*********************************************************************
    1.guard let 和 if let 相反。表示一定有值,没有就直接返回
    2.降低分支层次结构
    3.playground不能展示效果，要在函数中展示
********************************************************************/
// 创建一个类(详见:10-对象和类)
class test{
    func demo(){
        let aNick: String? = "ningcol"
        let aAge: Int? = 10
        guard let nick = aNick ,let age = aAge  else {
            print("nil")
            return
        }
        print("guard let: " + nick + String(age))
    }

}
var t = test()
t.demo()


/*******************************强制解包***************************************/
// 创建一个数组(详见:08-组数)
var dataList:[String]?
dataList = ["zhangsan","lisi"]
/*********************************************************************
    1.dataList? 表示 datalist 可能为 nil
    2.如果为 nil, .count 不会报错，仍然返回 nil
    2.如果不为 nil，.count执行，返回数组元素个数
    4. ?? 空合运算符(详见:02-运算符)
*********************************************************************/
let count = dataList?.count ?? 0

// 表示 datalist 一定有值,否则会出错！
let cou = dataList!.count







//: [Next](@next)
