//
//  UIButton+extension.swift
//  10.函数抽取创建控件的方法
//
//  Created by huang on 2017/1/11.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

extension UIButton{
    convenience init(title:String, color:UIColor = UIColor.darkGray){
        
        self.init()
        
        self.setTitle(title, for: .normal)
        self.setTitleColor(color, for: .normal)
        self.sizeToFit()
    }
    
    
    
    
    
    
    
    
    
    
}
