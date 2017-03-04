//
//  Person.swift
//  4.运行时加载属性列表
//
//  Created by huang on 2017/1/10.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

class Person: NSObject {
    
    var name: String?
    var age: Int = 0
    var title :String?
    
    class func propertyList()->[String]{
        
        var count:UInt32 = 0
        //1.获取类的属性列表
        let list = class_copyPropertyList(self,&count)
        print("属性的数量\(count)")
        //遍历数组
        for i in 0..<Int(count)
        {
        
            let pty = list?[i]
            
        //获取‘属性’的名称的C语言字符串
            //Int8->Byte->char  =====>其实就是C语言的字符串
            let cName = property_getName(pty)

            //转换成String字符串
            let  name = String(utf8String: cName!)
            print(name)

        }
        
        //3.释放C语言的对象
        free(list)
        return[] //返回空数组
    }
}
