//
//  ViewController.swift
//  15.Swift中的错误处理
//
//  Created by huang on 2017/1/18.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //json就是特殊格式的字符串
        let jsonString = "{\"name\":\"zhang\"}"
        //转换成二进制数据
        let data = jsonString.data(using: .utf8)
        //反序列化
        //方法一（推荐）（弱try）如果解析成功，就有值，否则为nil
        let json = try? JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments)
        print(json)

        //方法二：(不推荐)强try，如果成功就有值，否则就崩溃
        let json2 = try! JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments)
        print(json2)

        //方法三，处理异常,能够接收到错误，并且处理错误，结构复杂，且智能提示差
        //ARC开发，编译器自动添加 retain／release／autorelease
        //如果try catch不平衡，就会出现内存泄漏
        do{
            
            let json3 = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments)
            
            print(json3)
        }catch{

            print(error)
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
}
