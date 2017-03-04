//
//  ViewController.swift
//  1.图像的优化
//
//  Created by huang on 2017/1/22.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let rect = CGRect(x: 0,y:0,width:160,height:160)
        let iv = UIImageView(frame:rect)
         iv.center = view.center
        view.addSubview(iv)
        //设置图像
        let image = UIImage(named: "PlaceHolderImage_small_31x26_")
        iv.image = avatarImage(image: image!, size: rect.size,backColor: view.backgroundColor)
    
    }

    
    func avatarImage(image:UIImage,size:CGSize,backColor:UIColor?)->UIImage?{
        
        
        
        
        //1.上下文(内存中的上下文旨在内存中开辟地址)
        let rect = CGRect(origin: CGPoint(), size: size)
        
        
        //0.背景填充
        backColor?.setFill()
        UIRectFill(rect)
        

        /**
         -size绘图的尺寸
         -false(不透明)true（透明）
         -scale:屏幕分辨率（默认使用1.0分辨率，图像质量不好，但是可以指定为0，按照当前设备适当选择）
         */

        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0)
        
       
        
        //a.实例化一个圆形的路径
        let path = UIBezierPath(ovalIn: rect)
        
        //b.进行路径裁切
        
        path.addClip()
        
//        2.绘图
        image.draw(in: rect)
        
        //3.绘制内切的圆形
        UIColor.darkGray.setStroke()
        path.lineWidth = 10
        path.stroke()
        // 4.取得结果
        let result = UIGraphicsGetImageFromCurrentImageContext()
//        5.关闭上下问
        UIGraphicsEndImageContext()
//        5.返回结果
            return result
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

