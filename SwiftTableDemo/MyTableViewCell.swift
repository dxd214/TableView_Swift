//
//  MyTableViewCell.swift
//  JackToon
//
//  Created by 董晓东 on 15/6/29.
//  Copyright © 2015年 Jack. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    var model:MyModel!
/*
    //设置model信息
//    var model:MyModel = MyModel()
    
    func setMyModel(newmodel:MyModel)
    {
        nameLabel.text = model.name
        ageLabel.text = model.age
    }
*/
    //布局
    override func awakeFromNib()
    {
        super.awakeFromNib()
        self.selectionStyle = .None

    }
    //赋值
    override func layoutSubviews()
    {
        super.layoutSubviews()
        if((model) != nil)
        {
            nameLabel.text = model.name
            ageLabel.text = model.age
        }

    }
    
}
