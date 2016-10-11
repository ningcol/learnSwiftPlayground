//: Playground - noun: a place where people can play

import UIKit

// 创建一个 View
let v = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
let u = UIView()


// [UIColor redColor]   类方法：直接点出来
v.backgroundColor = UIColor.red


// 创建一个按钮
let btn = UIButton(type: .contactAdd)


// 将 btn 添加到 View 上
btn.center = v.center
v.addSubview(btn)






