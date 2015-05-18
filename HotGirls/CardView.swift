//
//  CardView.swift
//  HotGirls
//
//  Created by 臧其龙 on 15/5/18.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

import UIKit
import SnapKit

class CardView: UIView {
    
    var girlImageView: UIImageView = UIImageView(frame: CGRectZero)
    var girlImage:UIImage?{
        didSet{
            girlImageView.image = girlImage
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.blackColor()
        self.clipsToBounds = true
        
        self.addSubview(girlImageView)
        girlImage = UIImage(named: "fengjing.jpg")
        girlImageView.image = girlImage
        girlImageView.contentMode = UIViewContentMode.ScaleToFill
        
        girlImageView.snp_makeConstraints({
            (make:ConstraintMaker) -> Void in
            make.edges.equalTo(self).insets(EdgeInsetsMake(10, 10, 10, 10))
            
        })
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
