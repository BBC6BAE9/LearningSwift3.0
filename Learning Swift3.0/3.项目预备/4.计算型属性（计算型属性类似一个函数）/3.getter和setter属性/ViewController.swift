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
    
    lazy var p = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Swift的懒加载和OC的懒加载是有很大的不同的（OC每次都进行getter方法，所以在Swift千万不要把懒加载的控件设置为nil，设置成nil就再也回不来了）
        //只要调用过一次，懒加载后面的闭包就再也不会执行了
        //p.title3 = nil
        // let p = Person()
        //调用了Setter方法
        p.name = "老王"
        
        //调用了getter方法
        print(p.name)
        print(p.title)
        
        print(p.title2)
        print(p.title3)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        p.name = "huahua"
        print(p.title2)
        print(p.title3)
        
    }
}

