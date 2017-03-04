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
 
*/

class Person: NSObject {
    //name属性是可选的
    //OC中很多属性都是在需要时创建的例如vc.view/tableViewCell.textLabel/detailLabel/imageView,因为在手机开发中，内存很宝贵，有些属性是不一定需要费配内存空间的（专业术语叫做延迟加载，在需要的时候再创建）
    var  name: String?
    
    //overload 构造函数，实用字典设置初始值
    init(dict:[String: Any]) {
        /*
         KVC的方法是OC的方法*在运行时给对象发送消息*
         要求对象已经实例化完成
         */
        super.init()//保证对象已经全部初始化完成
        setValuesForKeys(dict)
    }
    
    
}
