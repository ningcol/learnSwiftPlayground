//: [Previous](@previous)

import Foundation

// 创建一个类
class Shape {
    var numberOfSides = 0
    // 定义 simpleDescription 无参方法,返回值为 String 类型
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

// 实例化
var shape = Shape()
// 赋值
shape.numberOfSides = 7
// 调用方法
var shapeDescription = shape.simpleDescription()

//  构造函数来初始化类实例
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    init(name: String) {
        self.name = name
    }
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

// 重写父类方法
class Square: NamedShape {
    var sideLength: Double
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    func area() ->  Double {
        return sideLength * sideLength
    }
    // 使用 override
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    } }
let test = Square(sideLength: 5, name: "my test square")
test.area()
test.simpleDescription()



//: [Next](@next)
