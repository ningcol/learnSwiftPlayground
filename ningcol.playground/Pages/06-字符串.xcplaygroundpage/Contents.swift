//: [Previous](@previous)

import Foundation
import UIKit
/**********************************************************************
    1.String 结构体，效率比对象高，一般推荐使用，支持遍历
    2.NSString 继承NSObject
**********************************************************************/
var str:String = "Hello你好"
//var st:NSString = "hah"
// 字节数量
print(str.lengthOfBytes(using: .utf8))
// 字符串长度
print(str.characters.count)
for a in str.characters{
    print(a)
}


// 字符串拼接
let name:String? = "老王"
let age = 80
let location = "隔壁"
print(location + (name ?? "a") + String(age) + "岁")
//  '\(变量名)' 会自动转换拼接
print("\(location)\(name)\(age)岁")


let rect = CGRect(x: 0, y: 0, width: 100, height: 100)
print("\(rect)")

// 格式字符串
let h = 13
let m = 5
let s = 9
let timeStr = String(format: "%02d:%02d:%02d", arguments: [h,m,s])
let timeStr1 = String(format: "%02d:%02d:%02d", h,m,s)

/**********************************************************************
    1.在Swift中使用 Range，最好把 String 改成 NSString
    2.str.substring(with: Range<String.Index>) 很麻烦
    3. '值 as 类型' 作为类型转换
**********************************************************************/
(str as NSString).substring(with: NSMakeRange(2, 5))

let index = str.index(str.startIndex, offsetBy: 3)
str.substring(from: index)
// "123"只是用来取到索引位置
str.substring(from: "123".endIndex)
str.substring(to: index)

// String 使用 Range
let myRange = str.startIndex..<str.index(str.startIndex, offsetBy: 5)
str.substring(with: myRange)

let myRange1 = index..<str.index(str.startIndex, offsetBy: 5)
str.substring(with: myRange1)









//: [Next](@next)
