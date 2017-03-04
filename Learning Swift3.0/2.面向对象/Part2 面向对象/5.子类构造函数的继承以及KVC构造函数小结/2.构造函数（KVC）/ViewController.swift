//
//  ViewController.swift
//  2.构造函数（KVC）
//
//  Created by huang on 2017/1/10.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    //如果子类没有重写父类的方法，调用的时候会直接调用父类的方法,子类的
        let  p = Student(dict: ["name":"laozhang","age":"19","title":"BOSS","no":"001"])
         print("\(p.name) \(p.age)\(p.title)\(p.no)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

