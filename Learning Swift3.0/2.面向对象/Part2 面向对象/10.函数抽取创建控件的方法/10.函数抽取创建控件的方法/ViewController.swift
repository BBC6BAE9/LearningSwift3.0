//
//  ViewController.swift
//  10.函数抽取创建控件的方法
//
//  Created by huang on 2017/1/11.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }

    /*
     老办法
     
     代码中不能出现重复的代码，要用extension优化
     */
    func setupUIOldWay(){
        
        let tf1 = UITextField(frame: CGRect(x: 20, y: 20, width: 100, height: 30))
        tf1.borderStyle = .roundedRect
        tf1.text = "0"
        
        view.addSubview(tf1)
        
        let tf2 = UITextField(frame: CGRect(x: 140, y: 20, width: 100, height: 30))
        tf2.borderStyle = .roundedRect
        tf2.text = "0"
        
        view.addSubview(tf2)
    
    }
    
    func  setupUI(){
        
        let tf1 = UITextField(frame: CGRect(x: 20, y: 20, width: 100, height: 30), placeholder: "0")
        view.addSubview(tf1)
        
        let tf2 = UITextField(frame: CGRect(x: 140, y: 20, width: 100, height: 30), placeholder: "0", fontSize: 14)
        view.addSubview(tf2)
        
        let  btn = UIButton(title: "计算")
        btn.center = view.center
        view.addSubview(btn)
        
        btn.addTarget(self, action: #selector(caculate), for: .touchUpInside)
        
    }
    
    func caculate(){
        
    }
}

