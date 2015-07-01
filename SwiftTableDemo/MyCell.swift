//
//  MyCell.swift
//  JackToon
//
//  Created by 董晓东 on 15/6/30.
//  Copyright © 2015年 Jack. All rights reserved.
//

import UIKit

class MyCell: UITableViewCell {

    var ageLabel: UILabel!
    var model:MyModel!
    override init(style: UITableViewCellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //布局
        self.setView()
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    //布局
    func setView()
    {
        // Initialization code
        ageLabel = UILabel(frame: CGRectMake(0, 0, 300, 20))
        ageLabel.backgroundColor = UIColor.grayColor()
        ageLabel.textColor = UIColor.whiteColor()
        ageLabel.textAlignment = NSTextAlignment.Center
        self.contentView.addSubview(ageLabel)
    }
    //赋值
    override func layoutSubviews()
    {
        super.layoutSubviews()
        if((model) != nil)
        {
            ageLabel.text = model.age
        }
        
    }


}
