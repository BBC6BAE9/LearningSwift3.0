//
//  UITextField+extension.swift
//  10.函数抽取创建控件的方法
//
//  Created by huang on 2017/1/11.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

/*
 分类
 -在Swift中叫做extension
 -在OC中叫做categary
 */
extension UITextField{
    
    convenience init(frame:CGRect,placeholder: String, fontSize: CGFloat = 14){
        //实例化当前对象
        self.init(frame:frame)

        //访问属性
        self.borderStyle = .roundedRect
        self.placeholder = placeholder
        self.font = UIFont.systemFont(ofSize: fontSize)
        
    }
    
    
}
