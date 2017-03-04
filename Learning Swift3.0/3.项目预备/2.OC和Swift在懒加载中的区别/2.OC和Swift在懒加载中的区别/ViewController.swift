//
//  ViewController.swift
//  2.懒加载中Swift和OC的区别
//
//  Created by huang on 2017/1/12.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //注意和OC不同
    //一旦label被置为nil，懒加载也不会再次执行
    //懒加载代码只在第一次调用的时候，创建对象执行闭包，然后将闭包的结果保存在label的属性中
    //
    private lazy var label:UILabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text  = "hello"
        label.sizeToFit()
        
        print(label)
    }
    
    //在Swift中不要主动清理视图或者控件
    //因为懒加载不会再次创建
    //这是OC和Swift很大的一个不同点
}

