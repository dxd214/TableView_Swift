//
//  MyModel.swift
//  JackToon
//
//  Created by 董晓东 on 15/6/29.
//  Copyright © 2015年 Jack. All rights reserved.
//

import UIKit

class MyModel: NSObject
{
    //定义声明
    var name:String = "小米"
    var age:String
    var Id:Int
    
    //使用
    init(name:String,age:String,ID:Int)
    {
        self.name = name
        self.age = age
        self.Id = ID
        super.init()
    }
}
