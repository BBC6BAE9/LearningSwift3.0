//
//  ViewController.swift
//  1-懒加载
//
//  Created by huang on 2017/1/12.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //初始化label，并且分配空间，比viewdidload要早
    //  var  label: DemoLabel?
    //这种方法能够定义空间，创建的时机太早了，移动端叫延迟加载，减少内存的消耗
    
    //var  label = DemoLabel()
    
    
    /**
     
     懒加载好处
     -延迟加载
     -最大的好处，可以接除解包的烦恼
     
     
     */
    //简单实现
    // lazy var label:DemoLabel = DemoLabel()
    
    //懒加载本质上是一个闭包
    // 懒加载的完整写法如下：供参考
    //日常开发不推荐这么些
    //-闭包中的智能提示不好
    //-如果是使用了self还需要考虑循环引用的问题
    lazy var label = {()->DemoLabel in
        
        let l = DemoLabel()
        //改部分可以用来写属性
        return l
       
    }()
    /*
     
     我他妈的不想看到这么多问号-----------去懒加载
     
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI(){
        
        //创建空间
        //添加到视图
        //解包为了参与计算，用subview数组记住控件，数组中不允许插入控件
        //可选解包，就是如果为nil什么也不做
        view.addSubview(label)
        label.text = "变聪明"
        label.sizeToFit()
        label.center = view.center
        
    }
    
}

