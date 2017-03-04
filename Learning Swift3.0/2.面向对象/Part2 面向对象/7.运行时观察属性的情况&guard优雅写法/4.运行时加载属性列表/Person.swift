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
        //获取类的属性列表
        let list = class_copyPropertyList(self,&count)
        print("属性的数量\(count)")
        //MARK: -强行解包的写法
             /*   for i in 0..<Int(count)
                {
        
                    let pty = list?[i]/*从可选数组中提取下表对应对应的结果，可能为nil*/
                    let cName = property_getName(pty!)/*用属性获取名称，属性必须存在*/
                    //转换成String字符串
                    let  name = String(utf8String: cName!)/*必须用C语言字符串转换成String*/
                    print(name)
        
                }
        */
        
        //MARK: -优化写法
        for i in 0..<Int(count)
        {
            //使用guard语法，依次判断每一项是否有值，只要有一项为nil，就不再执行后续的代码
            guard let pty = list?[i],let cName = property_getName(pty),let name = String(utf8String: cName) else {
            
                //继续遍历下一个，所以这个地方不写return
                continue
            }
            //name一定有值
            print(name)
           
        }
        
        
        //MARK: -强行解包的写法
        //3.释放C语言的对象
        free(list)
        return[] //返回空数组
    }
}
