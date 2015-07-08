//
//  NoeCollectionViewCell.swift
//  Demo
//
//  Created by 张建强 on 15/7/7.
//  Copyright (c) 2015年 张建强. All rights reserved.
//

import UIKit

class NoeCollectionViewCell: UICollectionViewCell {
    var product_head_image = UIImageView()//背景图片
    var min_price = UILabel()//价钱
    
    
    required init(coder aDecoder:NSCoder){
        super.init(coder: aDecoder)
        //
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        product_head_image = UIImageView(frame: CGRectMake(0, 0, self.frame.size.width, self.frame.size.width))
        product_head_image.contentMode = .ScaleToFill
        
        min_price = UILabel(frame: CGRectMake(8, self.bounds.height-(self.bounds.height/10), self.bounds.width-1, self.bounds.height/10))
        min_price.backgroundColor = UIColor.clearColor()
        min_price.textColor = UIColor.orangeColor()

        contentView .addSubview(product_head_image)
        contentView .addSubview(min_price)
    }

    
}
