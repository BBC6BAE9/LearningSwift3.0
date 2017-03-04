//
//  ViewController.swift
//  5.OC{}的坑
//
//  Created by huang on 2017/1/8.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let l = UILabel()
        //(l)参数结束，后面再加一个{}是尾随闭包
        view.addSubview(l)
       
        // Extra argument in call
            //
        {
            let l = UILabel()
            view.addSubview(l)
        }
        
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

