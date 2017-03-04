
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
    
    
}

