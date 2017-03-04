//
//  ViewController.swift
//  CollectionView
//
//  Created by huang on 2017/1/8.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    
    //数据源方法
    //如果继承collectionviewcontroller都有一个override
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellID", for: indexPath)
        
        cell.backgroundColor = UIColor.red
        return cell
    }
    // 移动cell
    override func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
    }
    
}
