//
//  ViewController.swift
//  collectionViewCustomHeaderDemo
//
//  Created by MacMini on 5/9/19.
//  Copyright © 2019 Immanent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var demoTableView: UITableView!
    
    let tempdata = ["test 1","test 1","test 1","test 1","test 1","test 1","test 1","test 1","test 1","test 1","test 1","test 1","test 1","test 1","test 1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
         demoTableView.estimatedRowHeight = 281.5
         demoTableView.rowHeight = UITableView.automaticDimension
    }


}




extension ViewController: UITableViewDataSource,UITableViewDelegate {
   
    func numberOfSections(in tableView: UITableView) -> Int {
        if tableView == demoTableView {
            return 2
        }else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 1 {
            return 1
        }else{
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "testTableViewCell", for: indexPath) as! testTableViewCell
 
            cell1.testLabel.text = "This is just for testing "
            return cell1
        }
        
        else  {
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "test2TableViewCell", for: indexPath) as! test2TableViewCell
            
            cell2.testCollectionView.delegate = self
            cell2.testCollectionView.dataSource = self
            var height = cell2.testCollectionView.collectionViewLayout.collectionViewContentSize.height
            cell2.heightContraint.constant = height
            self.view.layoutIfNeeded()
            return cell2
        }
    }
    
}

extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tempdata.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell3 = collectionView.dequeueReusableCell(withReuseIdentifier: "testCollectionViewCell", for: indexPath) as! testCollectionViewCell
        
        cell3.imageTest.image = UIImage(named: "10")
        
        return cell3
    }
    
//    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView
//    {
//        if kind == UICollectionView.elementKindSectionHeader
//        {
//            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "headerView", for: indexPath)
//            return headerView
//        }
//        return UICollectionReusableView()
//    }
    
    
}


class DynamicCollectionView: UICollectionView {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if bounds.size != intrinsicContentSize {
            invalidateIntrinsicContentSize()
        }
    }
    
    override var intrinsicContentSize: CGSize {
        return self.contentSize
}
    
}
