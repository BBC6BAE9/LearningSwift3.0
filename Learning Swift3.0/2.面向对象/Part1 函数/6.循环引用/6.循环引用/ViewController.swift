//
//  ViewController.swift
//  6.循环引用
//
//  Created by huang on 2017/1/8.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

/*面试中经常会问遇到的循环引用的情况，千万不要说没有遇到过*/

class ViewController: UIViewController {

//    定义属性
    var completionCallBack:(()->())?
    override func viewDidLoad() {
        super.viewDidLoad()

    loadData {
        //在Swift中如果出现了self.要特别小心
        //这个地方，只是闭包对self进行了copy，闭包完成之后会自动销毁，同时释放对self的引用
        //同时需要self对闭包进行饮用，在⬆️定义属性吧，哈哈哈
        print(self.view)
        }
    
    }
    
    func loadData(completion:@escaping ()->())->(){

        //使用属性记录闭包
        //下面这句代码意味着self对闭包饮用了
        completionCallBack = completion
        //异步
        DispatchQueue.global().async { 
            print("耗时操作")
            
            DispatchQueue.main.async(execute: { 
//                执行闭包
            completion()
            })
        }
    
    
    }
    //类似于OC的dealloc
    deinit {
    
        print("我去了")
        
    }
    
}

