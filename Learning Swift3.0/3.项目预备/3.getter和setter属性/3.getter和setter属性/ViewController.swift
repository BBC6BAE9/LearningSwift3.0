//
//  ViewController.swift
//  3.getter和setter属性
//
//  Created by huang on 2017/1/12.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

//计算型属性在OC中就是readonly属性
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    let p = Person()
        //调用了Setter方法
        p.name = "老王"
        
        //调用了getter方法
        print(p.name)
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

