//
//  ernaoDCollectionViewCell.swift
//  Demo
//
//  Created by 张建强 on 15/7/7.
//  Copyright (c) 2015年 张建强. All rights reserved.
//

import UIKit

class ernaoDCollectionViewCell: UICollectionViewCell {
    var product_head_image = UIImageView()//背景图片
    
    
    required init(coder aDecoder:NSCoder){
        super.init(coder: aDecoder)
        //
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        product_head_image = UIImageView(frame: CGRectMake(0, 0, self.frame.size.width, 60))
        product_head_image.contentMode = .ScaleToFill
        
        contentView .addSubview(product_head_image)
    }
}
