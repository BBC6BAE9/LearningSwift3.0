//
//  Person.swift
//  8.加载百度首页
//
//  Created by huang on 2017/1/11.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

class Person: NSObject {

    var name: String?
    var age: Int = 0
    
    
    //这个知识点用的极少，一般iOS开发模型的使用都是用的第三方框架直接转，UI上的东西又不需要我们自己写构造函数。但是这个知识点需要知道一下
    
    /*
     
     
     *****************
     *
     *便利构造函数的特点
     *
     ****************
     
     
     
     1.便利构造函数允许返回nil，
     -正常的构造函数一定会创建对象
     -判断给定的参数是否符合条件，不符合条件直接返回nil，这样可以减少内存开销！
     2.**便利构造函数**中，使用self.init()构造当前对象
     -没有convenice关键字的构造函数是用来负责创建对象的，反之是用来检查条件的，本身不负责对象的创建
     3.如果要在便利构造函数中使用对象的属性，一定要在self.init
     之后
     */
    
    
    
    /*
    //重载构造函数
    init?(name: String, age: Int){
        if age>100 {
            
        return nil
            
        }
    
    */
   convenience init?(name: String, age: Int){
        if age>100 {
            
            return nil
            
        }
    
    self.init()
    //代码执行到此self才允许被访问，才能够访问到对象的属性
    self.name = name
    
    }
    
    override init(){
    //super.init()
    
    }
    
    /*
     专业术语：析构函数
     */
    //没有func -->目的：不让调用
    //没有()-->不让重载
    //在对象销毁前不让调用
    
    deinit {
        
        //跟踪对象的销毁
        //有些东西必须释放
       
        /**
         -通知：不会崩溃，但是会泄漏
         -NSTimer／CADisplayLink
         -KVO不释放会崩溃（KVO(Key-Value Observing)）
        */
    }
    
    
}
