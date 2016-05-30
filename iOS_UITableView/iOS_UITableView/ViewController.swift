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
    
    //懒加载
    lazy var datas: [Int] = {
        //创建一个存放int的数组
        var nums = [Int]()
        //添加数据
        for i in 0...50{
            nums.append(i)
        }
        return nums
    }()
    

    //实现协议方法
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        //as 把xx作为xx，此处是将方法deqxxx的返回值AnyObject类型当做UITableViewCell
        //！告诉编译器我确定这里的UITableViewCell一定是非nil的, 可以放心的执行后面的
        let cell = tableView.dequeueReusableCellWithIdentifier(ID, forIndexPath: indexPath) as! UITableViewCell
        
        //配置cell Label要拆包
        cell.textLabel!.text = "假数据 - \(datas[indexPath.row])"
        
        return cell
    }
}

