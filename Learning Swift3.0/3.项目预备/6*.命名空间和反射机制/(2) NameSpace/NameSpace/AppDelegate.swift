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
        /**
         问号都是可选解包
         其实就是发送消息，不参与计算
         所有的问好都是Xcode自动添加的
         */
        //实例化window
        window = UIWindow()
        window?.backgroundColor = UIColor.red
        //设置根控制器
        //let vc = ViewController()
        //运用反射机制加载类，命名空间默认就是项目名称（最好不要有特殊数字和符号）
        //这个地方除了写名字，还可以动态获得命名空间
        
        
//        let clsName = "NameSpace.ViewController"
        //因为字典是可选的，需要解包之后再取值
        //如果字典为nil就不取值
        //通过key从字典去值，如果错了就没有值了
        //所以这里ns是AnyObject类型，表示不一定能够取到值
        let ns = Bundle.main.infoDictionary?["CFBundleName"] as? String ?? ""
        
          let clsName = ns + "."+"ViewController"
        let cls = NSClassFromString(clsName)as? UIViewController.Type
        
        //实用类来创建视图控制器
        let vc = cls?.init()
        
        window?.rootViewController = vc
        //        实例化window
        window?.makeKeyAndVisible()
        return true
    }
   
}

