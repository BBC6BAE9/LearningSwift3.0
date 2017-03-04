//
//  AppDelegate.swift
//  6.命名空间和反射机制
//
//  Created by huang on 2017/1/12.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit


/**
 1.知道在Swift中有命名空间
 -在同一个命名空间系，全局共享
 -第三方框架在Swift中使用的时候如果直接拖到项目中，从属于同一个命名空间，所以在今后Swift的开发中应该尽量使用cocoapod进行
 2.重点：Swift中NSStringFromClass的写法（反射机制）
 -反射：最重要的目的就是**解耦*
 3.网络搜索反射机制和工厂方法
 - 第一印象：会发现一个简单的功能会写的非常复杂
 - 但是封装的很好，而且弹性很大（面向对象就需要封装的很好）
 - 有一些优秀的三方框架非常难读，一些优秀的项目经过不断的封装和重构。所以《重构》这本书一定要看，要好好看
 
 
 高级软件工程师
 必须具备程序设计模式的概念，并且导入到开发中
 同学，一定要看书！！！！！！！！！！！！！！！！
 */

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    //注意window是可选的
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        window?.backgroundColor = UIColor.red
        
        /*抽取nameSpace类方法*/
        //let clsName = Bundle.main.nameSpace() + "."+"ViewController"
        
        /*抽取nameSpace计算型属性*/
        //使用计算型属性更加直观
        let clsName = Bundle.main.nameSpace + "."+"ViewController"
        
        let cls = NSClassFromString(clsName)as? UIViewController.Type
        
        //实用类来创建视图控制器
        let vc = cls?.init()
        
        window?.rootViewController = vc
        //实例化window
        window?.makeKeyAndVisible()
        return true
    }
    
}

