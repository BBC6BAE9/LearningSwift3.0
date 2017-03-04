//
//  ViewController.swift
//  manman
//
//  Created by huang on 2017/1/6.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit
/*
 0.OC [UIView alloc]initWithFrame:XXX]
 Swift UIView(frame:XXX)
 
 1.类名() = [类名 alloc]init 等价
 
 2.OC [UIColor redColor]类方法
 Swift UIColor.red
 
 3.访问当前对象，可以不使用self
 建议：都不使用,在编译器提示的时候再进行添加
 原因：闭包（类似于OC的Block）需要使用"self."
 
 4.没有“;”
 默认不需要
 
 5.枚举类型
 OC       UIButtonTypeContact
 Swift    .contact
 
 6.监听方法
 @selector
 #selector 如果带参数不需要使用：
 btn.addTarget(self, action:#selector(clickMe), for: .touchUpInside)

 7.调试
 NSLog
 print ，没有时间效率比NSLog高
  --------------------
 /   __FUNCTION__     /
 /      vs            /
 /   #function        /
  --------------------
 8.快速注释
 /*
 /// <#Description#> op+cmd+/ 快速注释
 */
 
 
 9.取消了预编译指令pragmamark
 
 10.TODO：FIXME：
 
 11.热键 opt+Click查看变量到底是什么玩意儿
 */
class ViewController: UIViewController {
    //MARK: -LifeCycle
    //MARK: 视图加载完成
    override func viewDidLoad() {
        super.viewDidLoad()
        //1.创建视图
        let v = UIView(frame: CGRect(x:0,y:0,width:200,height:200))
        //热键：color+ 回车
        v.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1) //TODO:应该设置新的颜色
        view.addSubview(v)
        //        //2.创建一个按钮
        //        let btn  = UIButton(type: .contactAdd)
        //        btn.addTarget(self, action:#selector(clickMe), for: .touchUpInside)
        //        btn.center = v.center
        //        v.addSubview(btn)
        
        let iv = UIImageView(image:#imageLiteral(resourceName: "touxiang"))//FIXME:headICon should be replaced        
        iv.center = v.center
        v.addSubview(iv)
        
        ClassOne()
    }
    
    func ClassOne() -> () {
        /*根据右侧的执行情况自动推倒*/
        //开发的时候一般都先写let如果有需要再改为var，并且let更加安全
        let x = 10
        //let x:Double = 10 //一般不指定类型而是使用自动推倒
        var y = 10.5
        y=4.5
        let view = UIView()
        print(x)
        print(y)
        print(view)
        
        /*
         swift对变量类型要求的异常严格，比如
         print(x+y)
         不会做任何形式的隐式转换，任何形式都必须由程序员指定
         Double()是“结构体”的构造函数，Swift中使用结构体的频率特别高，而不是之前普遍使用的类
         Swift中不存在基本数据类型，都是结构体！
         
         */

        print(Double(x)+y)
    }
    
    func clickMe(btn:UIButton)->(){
    
        print(#function+"------------------")
    
        print(btn)
    }
    
    //MARK: -接收到内存警告
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

