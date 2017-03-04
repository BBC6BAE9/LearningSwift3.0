//
//  Person.swift
//  2.构造函数（KVC）
//
//  Created by huang on 2017/1/10.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit
/**
 
 1.定义模型属性的时候，如果是对象，通常都是可选的
 -在需要的时候创建
 -避免写构造函数（可以简化代码）
 2.使用KVC方法之前，应该调用super.init保证对象实例化完成
 3.在定义模型的时候，如果是基本数据类型，不能设置成可选的，而且要设置初始值，否则会崩溃
 4.如果使用KVC设置数值，私有属性不能是private的（在其他类型中时极少见的）
 
*/

class Person: NSObject {

    var  name: String?

    var title: String?

    var age: Int = 0
    
    
    init(dict:[String: Any]) {

        super.init()//保证对象已经全部初始化完成
        setValuesForKeys(dict)
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
    //没有调用super，将父类的代码实现完全覆盖
    
    }
    
}
