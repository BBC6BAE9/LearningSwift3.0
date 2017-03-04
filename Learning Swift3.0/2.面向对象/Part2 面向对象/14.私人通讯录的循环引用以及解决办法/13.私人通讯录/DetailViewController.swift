//
//  DetailViewController.swift
//  13.私人通讯录
//
//  Created by huang on 2017/1/11.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

/*
 这种类似的功能用闭包写要比用代理写清爽干净的多
 */
class DetailViewController: UITableViewController {
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var phoneText: UITextField!
    @IBOutlet weak var titleText: UITextField!
    
    var person: Person?
    
    //var completionCallBack:()->()?❌这样写的意思是返回值是可选的
    //闭包是可选的
    var completionCallBack:(()->())?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //判断person是否有值
        if person != nil {

            nameText.text = person?.name
            phoneText.text = person?.phone
            titleText.text = person?.title
            
        }
        
    }
    
   @IBAction func save(_ sender: AnyObject) {
   
    
    //0.判断person是否为nil，如果是就新建
    if person == nil {
        person =  Person()
    }
    
    //1.用UI更新person的内容
    person?.name = nameText.text
    person?.phone = phoneText.text
    person?.title = titleText.text
    //2.执行闭包回调
    //OC执行block之前，必须判断是否有值，否则容易崩溃
    //!强行解包
    //?可选解包
    //再次强调，程序员要对每个!负责
    //completionCallBack!()
     completionCallBack?()
    //3.返回上一级界面
    ///Expression of type 'UIViewController?' is unused
       _ = navigationController?.popViewController(animated: true)
    }
}
