//: [Previous](@previous)

import Foundation

/***************************数组定义*************************/
//方括号 [] 来创建数组
let array1 = ["zhangsan","lisi"]

let array2 = [1,2,3,4,5]

var array3:[Int] // 定义一个数组（没有初始化）
array3 = [Int]() //初始化
//声明空数组,（必须初始化）
let array4 = [String]()  // 等价上面两行代码

let array5:[Any] = ["zhangsan","lisi",20]

var arr3 = [Double](repeating: 0.0, count: 3) //[0.0, 0.0, 0.0]
var arr4 = Array(repeating: 3.0, count: 3)  //[3.0, 3.0, 3.0]

var arr: [String] = ["Alex", "Brian", "Dave"]
print(arr.count)
print(arr[0])


/***************************数组遍历*************************/
for name in array1{
    print(name)
}

for i in 0..<array2.count{
    print(array2[i])
}

// 同时遍历下标和内容
for e in array2.enumerated(){
    print(e)
    print("元组 \(e.offset) \(e.element)")
}

// 反序遍历
for a in array2.reversed(){
    print(a)
}

/***************************数组增删改*************************/
// 追加
arr.append("ningcol")

// 合并(类型必须一致)
let arr1 = ["Evi","Tank"]
arr += arr1

// 修改
arr[0] = "Tom"
print(arr)

// 删除
arr.removeFirst()
print(arr)

arr.remove(at: 2)
print(arr)

// 删除全部并保留空间
arr.removeAll(keepingCapacity: true)
print(arr.capacity)  //数组容量

/***************************容量*************************/
// 容量每次都会在原来基础上 * 2
print("初始容量 \(array3.capacity)")
for i in 0..<8{
    array3.append(i)
    print("\(array3)，容量：\(array3.capacity)")
}




//: [Next](@next)
