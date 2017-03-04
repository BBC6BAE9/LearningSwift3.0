//
//  ViewController.swift
//  6.命名空间和反射机制
//
//  Created by huang on 2017/1/12.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit
/**
 反射机制的概念
 -对于任何一个类，都能够知道这个类的所有属性和方法
 -对于任何一个对象，都能够调用它的任意一个方法和属性
 -这种动态获取的信息以及动态调用对象的方法的功能称为 java语言的反射机制
 */

/**
在OC中如何运用反射机制（团队协作的时候比较常见）
 
 ·利用 NSClassFromString 方法来使用字符串获得类
 ·利用 isMemberOfClass 判断是否是某一个类
 ·利用 isKindOfClass 判断是否是某一个类的子类
 ·利用 conformToProtocol 判断对象是否遵守了某一个协议
 ·利用 respondToSelector 判断是否实现了某一方法
 ·利用 performSelector或者objc_msgsend 简介调用方法
 
 */
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

