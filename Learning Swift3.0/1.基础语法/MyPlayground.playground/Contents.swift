//: Playground - noun: a place where people can play
// 使用Playground 硬件要求高
// Swift的官方
import UIKit

var str = "Hello, playground"

//创建视图
let view = UIView(frame: CGRect(x:0 ,y:0, width: 80, height:80))
view.backgroundColor = UIColor.red

//创建按钮
let btn = UIButton(type:.contactAdd)
view.addSubview(btn)
btn.center = view.center

var sum = 0
for i in 0..<9
{
    sum += i

}
