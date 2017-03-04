//
//  Student.swift
//  1.构造函数
//
//  Created by huang on 2017/1/8.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

class Student: Person {
    var studentNo:String
    //重些Person的构造函数
    override init(){
        print("student init")
        studentNo = "001"
        super.init()
        
    }
}
