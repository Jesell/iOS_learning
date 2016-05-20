//
//  ViewController.swift
//  iOS_UITableView
//
//  Created by Jesell on 16/5/20.
//  Copyright © 2016年 Jesell. All rights reserved.
//

import UIKit

let ID = "cell"

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //创建UITableview
        var tableView = UITableView(frame: view.bounds, style:  UITableViewStyle.Plain)
        
        //注册cell
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: ID)
        
        //设置数据源和代理
        tableView.dataSource = self
        tableView.delegate = self
        
        //添加到view中
        self.view.addSubview(tableView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}

