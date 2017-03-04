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
    //这样会出现main的错误，main的错误都是OC的错误
    // -使用KVC会提示无法使用age的key
    // -原因：age是基本数据类型的结构体，OC中没有，OC中只有几本数据类型
    //var age: Int?

    var age: Int = 0
    /*如果是私有属性，实用KVC设值同样无法设置！也是会报main的错误*/
    /*OC中设置私有属性通过KVC是可以的（就算私有我也能访问），而在Swift中如果是private那就真的是私有，禁止外步访问（似有方法也禁止访问）*/
    private var title: String?
    
    
        init(dict:[String: Any]) {

        super.init()//保证对象已经全部初始化完成
        setValuesForKeys(dict)
    }
    
    
}
