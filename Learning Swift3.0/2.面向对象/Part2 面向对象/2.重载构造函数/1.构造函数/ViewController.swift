//
//  ViewController.swift
//  1.构造函数
//
//  Created by huang on 2017/1/8.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

/*
 必选属性的构造过程
 */

import UIKit
/*
 在Swift中，在同一个项目（命名空间下）下默认所有的类都是共享的，可以直接访问，不需要omport，所有对象的属性也可以直接访问到
 同一个Person类可以从属于不同的命名空间
 默认命名空间就是项目名称
 */
class ViewController: UIViewController {
    
    
    
    /*
     1.Swift相较OC更快更安全
     2.override（重写）和overload（重载）的区别
     -重写：父类存在相同的方法，子类重新编写父类方法实现
     -重载：函数名相同，参数类型和个数不相同
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let s = Student(name:"laowang",no: "010")
        
        print(s.name + "------" + s.no)
        //打断点，输入p s
        /*
         (__构造函数.Student) $R0 = 0x00006000002632c0 {
         __构造函数.Person = {            //父类
         ObjectiveC.NSObject = {        //父类的父类
         isa = __构造函数.Student        //isa指针指向当前对象
         }
         name = "laowang"
         }
         no = "010"
         }
         
         */
        
    }
    
    
}

