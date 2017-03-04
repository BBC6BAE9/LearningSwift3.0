//
//  Student.swift
//  1.构造函数
//
//  Created by huang on 2017/1/8.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

class Student: Person {
    var no: String
    init(name: String, no: String) {
        
        self.no = no
        //调用父类方法给name初始化
       super.init(name: name)
        
        
    }
}
