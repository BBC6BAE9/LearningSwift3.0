//
//  DemoLabel.swift
//  1-懒加载
//
//  Created by huang on 2017/1/12.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

class DemoLabel: UILabel {
    //重写构造函数
    override init(frame:CGRect){
    super.init(frame: frame)
    //纯代码走这里
    setupUI()
            
        
    }
    //相当于initWithCoder
    //提示，所有UIView及子类在开发时，一旦重写了构造函数，必须要实现initWithCoder函数，以保证拥有两个通道
    //方法的添加Xcode有智能提示
    
    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
       
            setupUI()
        
        //禁止XIB／SB使用本类
        //如果使用本类的话直接崩溃
        
        fatalError("init(coder:) has not been implemented")
        
        
        
    }
    
    
    private func setupUI(){
    
    print("设置界面")
        
    }
}
