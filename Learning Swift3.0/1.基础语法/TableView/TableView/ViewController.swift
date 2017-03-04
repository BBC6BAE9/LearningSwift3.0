//
//  ViewController.swift
//  TableView
//
//  Created by huang on 2017/1/8.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
    setupUI()
    }

    func setupUI(){
        //1.创建tableView
        let  tv = UITableView(frame:view.bounds,style:.plain)
        
        //2.添加视图
        view.addSubview(tv)
        
        //3.注册可重用的cell
        tv.register(UITableViewCell.self, forCellReuseIdentifier:"cellID" )
        //4.设置数据源
        tv.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)

        //这个“？”是代码中
        cell.textLabel?.text = "\(indexPath.row)"
        
        return cell
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

