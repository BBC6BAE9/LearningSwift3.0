//
//  ViewController.swift
//  4.可选项的判断
//
//  Created by huang on 2017/1/6.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        demo6(name: "老王", age: nil)
    }
    
    //1.强行解包（强行解包有风险）
    func demo1(x:Int?,y:Int?){
        
        print(x!+y!)
        
    }
    
    //2.朴素的方法（有可能导致代码非常丑陋）
    func demo2(x:Int?,y:Int?){
        
        if x != nil && y != nil {
            
            print(x!+y!)
            
        }
        
    }
    
    //3.使用三目运算符
    func demo3(x:Int?,y:Int?){
        
        /*
         ??是一个简单的三目运算符
         如果有值使用值，如果没有则使用后面的值替代
         */
        print((x ?? 0)+(y ?? 0))
        
        let name: String? = "老王"
        print(name!+"你好")//强制解包不安全
        print(name ?? "" + "你好")
        
    }
    
    //4. if let/var
    func demo4(){
        let oName:String? = "老王"
        let oAge:Int? = nil
        //        if oName != nil && oAge != nil{
        //        print(oName! + String(describing: oAge))
        
        /* if let/var连用，判断对象的值是否为nil */
        if let name = oName, let age = oAge
        {
            //进入分支后，name和age一定有值不需要解包
            //name age的作用域仅在{}之中，{}之内一定有值
            print(name + String(age))
        }else{
            
            print("name或者age有nil")
        }
        
        
        //        }
    }
    
    /*[让代码优雅]------------------------------*/
    
    //5. guard 守卫／守护
    func demo5(){
        let oName:String? = "老王"
        let oAge:Int? = nil
        guard let name = oName, let age = oAge   else {
            
            print("姓名年龄为nil")
            
            return
        }
        //代码执行至此，name 和age一定有值,判断有值之后，会做具体的逻辑实现，代码会很多，如果用if let会多一个分支，guard是降低分支层次
        print(name + String(age))
    }
    
    //6.guard let 和if let 的技巧
    func demo6(name:String?,age:Int?){
        
//         guard let name = name,let age = age  else {
//            print("name和age中有值为nil")
//            return
//        }
//        print(name + String(age))
//        
//        
        
        
        if let name = name,let age = age {

            //非空的name和age的作用域仅仅在花括号内
            print(name + String(age))

        }else{
        print("name和age中有nil")
        }
    }
    
    /*---------------------------------------*/
}

