//
//  ViewController.swift
//  6.循环引用
//
//  Created by huang on 2017/1/8.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

/*使用OC 的方式解除循环引用*/
class ViewController: UIViewController {
    
    //    定义属性
    var completionCallBack:(()->())?
    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: -方法一：类似OC的解决方法
        
        //        //解除循环引用需要打断链条
        //        //方法一：用OC的方式
        //        weak var weakself = self
        //
        //        //        weak let weakself = self
        //        //    'weak' must be a mutable variable, because it may change at runtime 在运行时有可能被修改->指向的对象一旦被释放，会被自动设置为nil
        //        loadData {
        //
        //            /*
        //             细节
        //             解包有两种方式解包
        //             -？可选解包-如果self已经被释放，不会向对象发送view(getter)的消息,显然这个更加安全合理
        //             -！强行解包-self已经被释放，强行解包会导致崩溃
        //             */
        //            //print(weakself!.view)
        //            print(weakself?.view)//之所以不用强行解包是因为不参与运算
        //        }
        
        
        //MARK: -方法二：Swift的推荐方法
        //[weak self]表示闭包中的所有self都是弱引用
        //对应OC中的"__weak"
        loadData { [weak self] in
            print(self?.view)
        }
        
        //MARK: -方法三：Swift中的另一种方法（了解即可）
        //相当于OC中的assigned，不会强引用，对象释放之后,指针仍然指向之前的位置，变成野指针
        //对应OC中的"__unsafe_unretained会有风险"
        //        loadData { [unowned self] in
        //            print(self.view)
        //        }
        
    }
    
    func loadData(completion:@escaping ()->())->(){
        
        //使用属性记录闭包
        //下面这句代码意味着self对闭包饮用了
        completionCallBack = completion
        //异步
        DispatchQueue.global().async {
            print("耗时操作")
            Thread.sleep(forTimeInterval: 3)
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

