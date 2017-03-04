
//
//  Person.swift
//  3.getter和setter属性
//
//  Created by huang on 2017/1/12.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

/*其实Swift中是没有成员变量的概念的，我们就在这里写一个假装的吧*/
class Person: NSObject {
    //getter和setter仅供演示，日常开发中不使用
    private var _name:String?
    //Swift中一般不会重写setter和getter方法
    var name :String?{
        
        get{
            //返回成员变量
            return _name
        }
        set{
            //使用下划线的成员变量记录值
            _name = newValue
        }
    }
    //OC中定义属性的时候又一个readonly->重写getter方法
    //只是重写了get方法,没写setter方法------》这个就是只读属性
    
    var title:String{
        get{
            
            return "Mr."+(name ?? "")
        }
    }
    
    //只读属性的简写
    //又称为“计算型属性”——》本身不保存内容，都是通过计算获取结果
    //这个其实就相当于一个函数：这个函数没有参数但是有返回值
    var title2:String{
        
        return "Mr."+(name ?? "")
        
    }
    //👆对比下
    //👇对比下
    //懒加载的title，本质是一个闭包
    //懒加载会在第一次访问的时候，执行，结束后会把结果保存在title3中
    //后续调用直接返回title3的内容
    //懒加载属性回分配空间存储值！计算型则不会，每次都是计算的
    lazy var title3: String? = {
        
        return "lazy" + (self.name ?? "")
        
    }()
    
}

