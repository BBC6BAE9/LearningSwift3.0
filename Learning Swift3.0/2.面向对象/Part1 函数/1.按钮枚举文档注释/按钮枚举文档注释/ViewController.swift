//
//  ViewController.swift
//  按钮枚举文档注释
//
//  Created by huang on 2017/1/8.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    /*
     枚举类型
          
     Swift中有 
     -类 
     -结构体 
     -枚举（一般不会用到太高级的语法）
     
     以上三个家伙都有构造函数，都可以有方法，整体看起来，都像原有的类
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        let  btn = UIButton()
        btn.setTitle("come on", for: .normal)
        btn.setTitleColor(UIColor.blue, for: .normal)
        btn.sizeToFit()
        btn.center = view.center
        view.addSubview(btn)
        
        
        
    }

       
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

