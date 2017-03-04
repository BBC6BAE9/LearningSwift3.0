//
//  ListTableViewController.swift
//  13.私人通讯录
//
//  Created by huang on 2017/1/11.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    //联系人数组
    var personList = [Person]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        loadData { (list) in
            print(list)
            
            //  拼接数组,闭包中是定义好的代码，在需要的时候执行，需要"self."来指定语境
            self.personList+=list
            //  刷新表格
            self.tableView.reloadData()
        }
        
    }
    /*在闭包里面写的代码智能提示经常有问题*/
    //模拟异步，利用闭包回调
    private func  loadData(completion:@escaping (_ list:[Person])->())->(){
        
        DispatchQueue.global().async {
            
            print("正在努力加载中")
            Thread.sleep(forTimeInterval: 3)
            
            var arrayM = [Person]()
            
            for i in 0..<20{
                
                let p = Person()
                p.name = "zhanghsan-\(i)"
                p.phone = "1860"+String(format: "%6d", arc4random_uniform(1000000))
                
                p.title = "BOSS"
                arrayM.append(p)
            }
            //主线程回调
            DispatchQueue.main.async {
                //回调执行闭包
                completion(arrayM)
                
            }
        }
    }
    
    //MARK: -数据源方法
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
        cell.textLabel?.text = personList[indexPath.row].name
        cell.detailTextLabel?.text = personList[indexPath.row].phone
        return cell
        
        
    }
    
    
    //MARK:-代理方法
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        performSegue(withIdentifier: "list2detail", sender: indexPath)
        
        
    }
    
    //MARK:-控制器跳转方法
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /********************************************************/
        //强制类型转换
        //Swift中除了String外绝大多数都需要！和？
        //as!和as？根据前面的返回值确定
        //if let 和guard let 里一律用?如果确定有值那么还守护干嘛呢
        /********************************************************/
        let vc  = segue.destination as! DetailViewController
        
        
        /*
         
         block特点
         -定义block可以和当前上下文一起
         -便于阅读和维护
         -可以根据不同的需求传递不同的代码
         
         */
        //设置选中的person
        if let indexPath = sender as? IndexPath{
            
            vc.person = personList[indexPath.row]
            //设置编辑完成的闭包
            //编辑个人信息的闭包
            vc.completionCallBack = {
                //刷新指定行
                self.tableView.reloadRows(at: [indexPath], with: .automatic)
            }
        }else{
            //新建个人纪录
            //新建个人信息的闭包
            vc.completionCallBack = {
                //1.设置明细控制器的person
                guard let p = vc.person else{
                    return
                }
                
                //2.插入数组顶部
                self.personList.insert(p, at: 0)
                
                //3.刷新表格
                self.tableView.reloadData()
            }
            
        }
    }
    
    @IBAction func addPeople(_ sender: AnyObject) {
        
        //跳转界面
        performSegue(withIdentifier: "list2detail", sender: nil)
        
        
    }
    
}
