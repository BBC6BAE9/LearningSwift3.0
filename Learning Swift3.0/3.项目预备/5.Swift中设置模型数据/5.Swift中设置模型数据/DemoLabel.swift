//
//  DemoLabel.swift
//  5.Swift中设置模型数据
//
//  Created by huang on 2017/1/12.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

class DemoLabel: UILabel {
    
    //模型->给视图设置模型，由视图自己根据模型的数据，决定显示的内容
    var person: Person? {
        //**替代OC中重写setter方法*
        //区别：再也不需要考虑 _成员变量 = 值！
        //OC中如果是copy属性 _成员变量 = 值.copy
        didSet{
            //此时name属性已经有值，可以直接设置UI内容
            text = person?.name
        }
        
        
    }
}
