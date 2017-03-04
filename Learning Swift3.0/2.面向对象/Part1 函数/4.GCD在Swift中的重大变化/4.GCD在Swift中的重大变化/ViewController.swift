//
//  ViewController.swift
//  4.GCD在Swift中的重大变化
//
//  Created by huang on 2017/1/8.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//


/*
-要能看懂
-慢慢学会自己写
*/
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData { (result) in
            
            print("获取的新闻数据\(result)")
            
        }
        //原始写法(效果是完全一样的)
        //        loadData(completion: { (result) in
        //
        //            print("获取的新闻数据\(result)")
        //
        //        })
        //尾随闭包，函数参数可以提前结束，最后一个参数直接使用{}包装闭包的代码
        //        loadData(completion: <#T##([String]) -> ()#>)
        
        //        loadData { (<#[String]#>) in
        //            <#code#>
        //        }
    }
    
    func loadData(completion:@escaping (_ result:[String])->()){
        //将任务添加到队列，制定执行的函数
        //翻译：队列调度任务（block/闭包）以同步／异步执行
        DispatchQueue.global().async {
            
            print("耗时操作\(Thread.current)")
            
            Thread.sleep(forTimeInterval: 2.0)
            let json = ["头条","出大事儿了","周杰伦出新专辑了"]
            //主队列回调
            DispatchQueue.main.async {
                print("主线程更新UI\(Thread.current)")
                
                //获得结果进行回调
                //回调 ->执行 闭包（通过参数传递的）
                //传递异步获取的结果
                completion(json)
            }
        }
        
        
    }
    
   }

