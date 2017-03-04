//
//  ViewController.swift
//  5.Swift中设置模型数据
//
//  Created by huang on 2017/1/12.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p = Person()
        p.name = "小花"
        
        let label = DemoLabel(frame: CGRect(x: 20, y: 40, width: 100, height: 20))
        label.backgroundColor = UIColor.red
        //将模型设置给label
        label.person = p
        view.addSubview(label)
    }

}

