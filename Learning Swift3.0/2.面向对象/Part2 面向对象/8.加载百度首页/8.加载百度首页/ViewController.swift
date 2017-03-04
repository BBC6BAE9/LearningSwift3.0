//
//  ViewController.swift
//  8.加载百度首页
//
//  Created by huang on 2017/1/10.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
  //URL的构造函数可以返回nil
  //构造函数就是实例化对象的
        //init?(String:String)->构造函数可以返回nil
        let url = URL(string:"http://www.baidu.com")
        
        //发起网络请求
        //和OC的区别，闭包的所有参数都得自己写，OC的都是自己带出的。
        //-如果不关心的值可以下划线直接忽略
        
        URLSession.shared.dataTask(with: url!) { (data, _, error) in
            
            //            if (error != nil){
            //
            //            print("网络请求失败")
            //                return
            //            }
            
            guard let data = data else {
                print("网络请求失败\(error)")
                return
            }
            
            let html = String(data: data, encoding: .utf8)
            
            print(html)
            
            }.resume()
        
        
    }
    
    
}

