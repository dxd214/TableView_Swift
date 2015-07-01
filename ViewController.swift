//
//  ViewController.swift
//  SwiftTableDemo
//
//  Created by 董晓东 on 15/6/30.
//  Copyright © 2015年 董晓东. All rights reserved.
//

import UIKit
let kScreenWidth = UIScreen.mainScreen().bounds.size.width
let kScreenHeight = UIScreen.mainScreen().bounds.size.height
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    //定义声明
    var tableView:UITableView?
    var data = NSMutableArray()
    let iden = "iden"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "单元格"
        _initView()
        _loadData()
    }

    func _initView()
    {
        tableView = UITableView(frame: CGRectMake(0, 0, kScreenWidth, kScreenHeight), style: UITableViewStyle.Grouped)
        tableView?.dataSource = self
        tableView?.delegate = self
        tableView?.tableFooterView = UIView()
        self.view.addSubview(self.tableView!)
        
        self.tableView?.registerNib(UINib(nibName:"MyTableViewCell", bundle: nil), forCellReuseIdentifier: iden)
    }
    
    func _loadData()
    {
        for index in 0...4
        {
            let model = MyModel(name: "小明", age: "age:\(index+1)", ID: index)
            data.addObject(model)
        }
    }
    //MARK:tableViewDataSource
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 3
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        if section == 2
        {
            return data.count
        }
        else
        {
            return 1;
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        if(indexPath.section == 2)
        {
            //从nib中加载
            let cell = tableView.dequeueReusableCellWithIdentifier(iden, forIndexPath: indexPath) as? MyTableViewCell
            cell?.model = data[indexPath.row] as? MyModel
            return cell!
        }
        else if(indexPath.section == 1)
        {
            //代码加载
            let idens = "myIdens"
            var cell = tableView.dequeueReusableCellWithIdentifier(idens)as? MyCell
            if(cell == nil)
            {
                cell = MyCell(style: UITableViewCellStyle.Default, reuseIdentifier:idens)
                cell?.backgroundColor = UIColor.orangeColor()
            }
            cell!.model = data[indexPath.row] as? MyModel
            return cell!
        }
        else
        {
            //系统Cell
            let cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: nil)
            cell.detailTextLabel?.backgroundColor = UIColor.clearColor()
            //不要分割线
            cell.selectionStyle = UITableViewCellSelectionStyle.None
            
            cell.textLabel?.text = "123"
            cell.detailTextLabel?.text = "13ws4d5rftgyuhinjm"
            return cell
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        print("\(indexPath.row)")
        
        let cell:UITableViewCell! = tableView.cellForRowAtIndexPath(indexPath)
//        （这种是没有点击后的阴影效果)
        cell.selectionStyle = UITableViewCellSelectionStyle.None
//        这种是点击的时候有效果，返回后效果消失
        cell.setSelected(false, animated: true)

    }



}

