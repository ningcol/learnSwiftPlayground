//: [Previous](@previous)

import Foundation
/***************************字典定义*************************/
//方括号 [] 来创建字典

let dict1 = ["name":"lisi","age":"18"]
// 不同类型必须指明为 any
var dict2:[String:Any] = ["name":"lisi","age":18]


let array = [
    ["name":"lisi","age":"18"],
    ["name":"wangwu","age":8]
]
print(array)
let array1:[[String:Any]] = [
    ["name":"lisi","age":"18"],
    ["name":"wangwu","age":8]
]
print(array1)

print(dict2["age"])

/***************************字典增删改*************************/
// 增加
dict2["sex"] = "man"
print(dict2)
// 修改（通过key来取值，key不存在就是新增）
dict2["name"] = "zhangsan"
print(dict2)
// 删除(直接给key进行删除)
dict2.removeValue(forKey: "age")
print(dict2)


/***************************字典遍历*************************/
for e in dict2{
    //e 为元组
    print("字典遍历:\(e)  e.key:\(e.key)  value:\(e.value)")
}
// key value 可以随意更改
for (key,value) in dict2{
    //e 为元组
    print("key:\(key), value:\(value)")
}

/***************************字典合并*************************/
var dict3:[String:Any] = ["name":"zhangsan","age":18,"sex":"man"]
let dict4:[String:Any] = ["name":"ningcol","height":50]
// 如果key存在修改  不存在会增加
for e in dict4{
    dict3[e.key] = dict4[e.key]
}
print("合并dict:" + String(format: "%@", dict3))





//: [Next](@next)
