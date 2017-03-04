//
//  ViewController.swift
//  3.逻辑分支
//
//  Created by huang on 2017/1/6.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo()
    }

    func demo(){
        let x = 10
        /*
         条件不需要()
         语句必须有{}
         */
        if x>5 {
        print("大了")
        }else{
        //该部分的代码永远不会被执行
        print("小了")
        }

        //三目运算
        x>5 ? print("大了"):print("小了")
        //省略的写法
        //()表示空执行
        x>5 ? print("大了"):()
    }

}

