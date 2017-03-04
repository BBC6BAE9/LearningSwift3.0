//
//  ViewController.swift
//  8.加载百度首页
//
//  Created by huang on 2017/1/10.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//






//////////////////////////////
/*
Swift程序员要对每个"!"负责
*/
//////////////////////////////
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        let p = Person(name: "laowang", age: 10)
        print(p?.name)
        
        
        let url = URL(string:"http://www.baidu.com")
        
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

