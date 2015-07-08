//
//  erNaoViewController.swift
//  Demo
//
//  Created by 张建强 on 15/7/7.
//  Copyright (c) 2015年 张建强. All rights reserved.
//

import UIKit

class erNaoViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    //日常Identifier
    let normaIdentifier = "normalCell"
    //秀铺Identifier
    let productIdentifier = "productCell"
    var collection:UICollectionView!

    var typeT:Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("进来了")
        
         let WINDOW_HEIGHT:CGFloat = UIScreen.mainScreen().applicationFrame.size.height
         let WINDOW_WIDTH:CGFloat = UIScreen.mainScreen().applicationFrame.size.width
        var width = self.view.frame.width
        var height = self.view.frame.height
        var button1 = UIButton(frame: CGRectMake(0, 100, width/3, 60))
        button1.tag = 1
        button1.addTarget(self, action: "abc:", forControlEvents: UIControlEvents.TouchUpInside)
        button1.backgroundColor = UIColor.blueColor()
        button1.setTitle("button1", forState: UIControlState.Normal)
        var button2 = UIButton(frame: CGRectMake(width/3, 100, width/3, 60))
        button2.tag = 2
        button2.addTarget(self, action: "abc:", forControlEvents: UIControlEvents.TouchUpInside)
        button2.setTitle("button2", forState: UIControlState.Normal)
        button2.backgroundColor = UIColor.redColor()
        var button3 = UIButton(frame: CGRectMake((width/3)*2, 100, width/3, 60))
        button3.backgroundColor = UIColor.orangeColor()
        button3.setTitle("button3", forState: UIControlState.Normal)
        
        let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.minimumInteritemSpacing = 1
        layout.minimumLineSpacing = 1
        collection = UICollectionView(frame: CGRectMake(0, 121, WINDOW_WIDTH, WINDOW_HEIGHT-64),collectionViewLayout: layout)
        collection.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        collection.backgroundColor = UIColor.brownColor()
        
        
        
        collection.delegate = self
        collection.dataSource = self
        
        
        
//        collection.registerClass(productIdentifier.self, forCellWithReuseIdentifier: productIdentifier)
        collection.registerClass(NoeCollectionViewCell.self, forCellWithReuseIdentifier: productIdentifier)
        collection.registerClass(ernaoDCollectionViewCell.self, forCellWithReuseIdentifier: normaIdentifier)
        
        self.view.addSubview(collection)
        self.view.addSubview(button1)
        self.view.addSubview(button2)
        self.view.addSubview(button3)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        //#warning Incomplete method implementation -- Return the number of sections
        return 1
    }
    //

    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //#warning Incomplete method implementation -- Return the number of items in the section
        

        return 12
    }
    
    
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
    
        
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        var width1 = self.view.frame.width
        var height1 = self.view.frame.height
        if(typeT == 1){
            return CGSizeMake(width1, width1/2)
        }else{
            return CGSizeMake((width1/2)-1, width1/2)
        }
    }
    //
    func collectionView(collectionView: UICollectionView, willDisplayCell cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    
    
    //我的收藏里每个Cell显示什么内容
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        if(typeT == 1){
            var productcell = collectionView.dequeueReusableCellWithReuseIdentifier(normaIdentifier, forIndexPath: indexPath) as! ernaoDCollectionViewCell
            productcell.product_head_image.image = UIImage(named:"gerenzhuye_jianbian_@2x")
            return productcell

        }else{
        var productcell = collectionView.dequeueReusableCellWithReuseIdentifier(productIdentifier, forIndexPath: indexPath) as! NoeCollectionViewCell
            productcell.min_price.text = "张建强真棒"
//          var img = UIImage(named:"peek")
            productcell.product_head_image.image = UIImage(named:"24x24@2x")
            return productcell
        }
    }
    
    func abc(sender:UIButton){
        println(sender.tag)
    
        if(sender.tag == 1){
            typeT = 2
            self.collection.reloadData()
        }else{
            typeT = 1
            self.collection.reloadData()
        }
    }
    
    
}
