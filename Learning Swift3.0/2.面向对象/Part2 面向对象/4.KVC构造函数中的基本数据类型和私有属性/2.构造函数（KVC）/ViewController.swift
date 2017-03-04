//
//  ViewController.swift
//  2.构造函数（KVC）
//
//  Created by huang on 2017/1/10.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

/*
 
KVC（Key-value coding）键值编码，单看这个名字可能不太好理解。其实翻译一下就很简单了，就是指iOS的开发中，可以允许开发者通过Key名直接访问对象的属性，或者给对象的属性赋值。而不需要调用明确的存取方法。这样就可以在运行时动态在访问和修改对象的属性。而不是在编译时确定，这也是iOS开发中的黑魔法之一。很多高级的iOS开发技巧都是基于KVC实现的。
 */
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    
        let p  = Person(dict: ["name":"laozhang","age":"109","title":"BOSS"])
       
        print("\(p.name) \(p.age)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

