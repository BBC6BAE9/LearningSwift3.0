//
//  ViewController.swift
//  字典
//
//  Created by huang on 2017/1/8.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        demo4()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //4.合并
    func demo4(){
    
        var dict1 = ["name":"张三","age":18] as [String : Any]
        
        let dict2 = ["name":"大帅","height":18] as [String : Any]
        //字典不能直接相加
        //思路，便利dic2依次设置
        //如果key存在会修改，如果key不存在会新增
        for e in dict2{
        dict1[e.key] = dict2[e.key]
        
        }
        
        print(dict1)
    
    }
    
    //3.遍历
    func demo3(){
        let dict = ["name":"张三","age":18] as [String : Any]
        
        //第一种写法
        for  e  in dict{
            print(e)
            print(e.key)
            print(e.value)
        }
            print("--------")
        //第二种写法
        for (key,value) in dict{
            print(key)
            print(value)
            print("\n")
        }
    }
    
    //2.增删改
    func demo2(){
        
        var dict = ["name":"张三","age":18] as [String : Any]
        dict["title"] = "大哥"
        print(dict)
        
        //修改
        //字典中是通过key取值的，如果key不存在就是新增，存在就是修改
        dict["name"] = "大西瓜"
        print(dict)
        
        //删除 -直接给定key删除，这个值必须可以是哈希的 MD5只是其中一种，将字符串变成唯一的整数，便于查找，提高字典便利的速度
        dict.removeValue(forKey: "age")
    }
    
    //1.定义
    func demo1(){
        
        //OC中使用字典使用{}
        //Swift中同样使用中括号
        // key-value ->[String:NSObject]
        let dict = ["name":"张三","age":18] as [String : Any]
        print(dict)
        
        //定义字典的数组（这种格式在开发中使用的最多）
        /*
         --------------------------------------------------
         一个对象能被转换成Json必须遵循以下规则
         -顶级节点是数组NSArray或字典NSDictionary
         -所有的对象必须是NSString，NSNumber，NSArray，NSDictionary，或者是NSNull（其中数组和字典可以嵌套使用）
         -所有的key是NSString
         -NSNumber不能为空或者无穷大
         --------------------------------------------------
         */
        let array:[[String : Any]] = [
            ["name":"张三","age":18] ,
            ["name":"贺五","age":59],
            ["name":"李四","age":16],
            ["name":"王二麻子","age":32],
            ["name":"周三","age":37],
            ["name":"黄帅","age":18]
        ]
        print(array)
    }
}

