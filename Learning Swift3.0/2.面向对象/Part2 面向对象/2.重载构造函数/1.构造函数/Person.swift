//
//  Person.swift
//  1.构造函数
//
//  Created by huang on 2017/1/8.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//


/**
 
 构造函数写法
 1.给自己的属性分配空间并且设置初始值
 2.调用父类的构造函数，给父类的属性分配初始空间并且设置初始值
 NSObject没有属性，只有一个成员变量 ‘isa’（用来记录创建）
 
 */
import UIKit


 

//Class 'Person' has no initializers
//Person类没有初始化器s，构造函数可以有多个，默认是init
class Person: NSObject {
    
    var  name: String

    init(name: String) {
        //实用参数的的name设置给属性
        print("Person init")
        self.name = name
        super.init()
    }
}
