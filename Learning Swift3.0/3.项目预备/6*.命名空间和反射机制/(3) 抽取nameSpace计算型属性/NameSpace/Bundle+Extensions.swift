//
//  Bundle+Extensions.swift
//  NameSpace
//
//  Created by huang on 2017/1/13.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import Foundation

extension Bundle{

    /// 对象函数：获取命名空间
    ///
    /// - returns: 命名空间字符串
//    func nameSpace() -> String {
//
//        return Bundle.main.infoDictionary?["CFBundleName"] as? String ?? ""
//    }
    
    var nameSpace:String {
    
    return Bundle.main.infoDictionary?["CFBundleName"] as? String ?? ""
    
    
    }
    


}
