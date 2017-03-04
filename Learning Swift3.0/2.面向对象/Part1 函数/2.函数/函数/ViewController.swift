//
//  ViewController.swift
//  函数
//
//  Created by huang on 2017/1/8.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       print(sum3())
    }
 
    
    //无返回值
    func demo5(){
   
    print("哈哈")
    
    }
   
    /*   执行 -> 目标  */
    func demo6()->(){
        
        print("哈哈")
        
    }
    
    
    func demo7()->Void{
        
        print("哈哈")
    
    }
    
    /*
     重大改变
     */
    // 函数的默认值OC不具备的
    // 给参数设置默认值，这个有点意思，OC需要定义很多很多的方法和方法是实现，最终调用包含所有参数的方法
    func sum3(_ x: Int = 1,_ y:Int = 2) -> Int{
        // swift中使用_忽略所有不感兴趣的内容
        return x+y
    }
    
    func sum2(_ x:Int,_ y:Int) -> Int{
// swift中使用_忽略所有不感兴趣的内容
        return x+y
    }
 
   //MARK:外部参数就是在形参面前加一个名字
   //外部参数不会影响函数内部细节，会使外部调用方看起来更加直观
   //外部参数使用下划线，外部调用会忽略变量名字
    func sum1(num1 x:Int,num2 y:Int) -> Int{
        return x+y
    }

    
    /// 函数
    ///
    /// - parameter x: 参数一
    /// - parameter y: 参数二
    ///
    /// - returns: 和
    func sum(x:Int,y:Int) -> Int{
        return x+y
    }
    
 }

