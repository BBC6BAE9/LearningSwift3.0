//
//  ViewController.swift
//  2.可选项的概念
//
//  Created by huang on 2017/1/6.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

/*
  可选项是Swift的重要概念（optional）（可能有值可能没有值）
 ？是在定义用的
 ！是在解包中用的（解包就是准备计算了）
 //程序中应该尽量少使用惊叹号，因为如果你使用了惊叹号，Xcode就不管你了，崩溃就怪程序员了。
 */
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo1()//可选项的基本概念
        demo2()//
    }
    func demo1(){
        //1.原始的可选项定义
        //optional: none没有值 some：某一类值
        let x:Optional = 10;
        //2.简单定义
        //?的意思就是定义一个可选Int的类型，可能没有值得，也可能有一个Int的值
        let y:Int? = 20;
        
        print(x)
        print(y)
        //不同类型之间的值不能直接运算nil不是任何类型的值不能直接参与计算
        //!强行解包-从可选项中强行获取对应的值,          
        // let y:Int? = 20;也是初始化的意思，但是如果强行获取非空的值程序就会崩溃
        print(x!+y!)
        
    }
    
    func demo2(){
        //定义，y没有初始化
        //***let的可选值没有默认值
        let y:Int?
        //初始化，给常量设置数值
        y = 20
        //y = 200
        print(y)
        
        //var的默认值为nil
        var x:Int?
        x = 10
        x = 100
        print(x)
        
    
    }
   
}

