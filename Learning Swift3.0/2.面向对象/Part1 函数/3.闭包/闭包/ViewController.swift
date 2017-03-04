//
//  ViewController.swift
//  闭包
//
//  Created by huang on 2017/1/8.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//


/*
 
 闭包类似于OC中的Block，但是比OC的闭包使用更加广泛
 -在OC中block是匿名函数
 -Swift中函数是特殊的闭包

 
 闭包的使用场景
 -异步执行完成回调
 -控制器间的回调
 -自定义视图回调
 
 
 */
import UIKit

class ViewController: UIViewController {
    
    /*
     闭包
     
     提前准备好的代码
     在需要的时候执行
     可以当作参数传递
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(sum(x: 10, y: 20))
        
        //最简单的闭包
        //b1的类型()->()
        //没有类型没有返回值的函数
        let b1 = {
            print("hello")
        }
        //执行闭包
        b1()
        
        //带参数的闭包，参数返回值代码都写在花括号中
        let b2 = {(x:Int)->() in
        
            print("原来闭包就是这个样子啊")
        }
        
        b2(100)
        
        
        
        //带参数带返回值的闭包，参数返回值代码都写在花括号中
        let b3 = {(x:Int)->Int in
            
            return(x+250)}
        print(b3(100))
            
    }
    
    //使用函数记录常量的演练
    func demo1(){
        //定义一个常量记录函数
        let f = sum
        //在需要的时候运行
        print(f(10,20))
    }
    
    func sum(x:Int,y:Int) -> Int {
        return x + y;
    }
}

