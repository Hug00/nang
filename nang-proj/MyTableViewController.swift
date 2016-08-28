//
//  ViewController.swift
//  nang
//
//  Created by 黄晋雪 on 8/20/16.
//  Copyright © 2016 黄晋雪. All rights reserved.
//

import UIKit

class MyTabeViewController: UITableViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        只显示有内容的列表项
        self.tableView.tableFooterView = UIView()
//        分割线的左边距
//        self.tableView.separatorInset.left = 0
        let leftBarButton = UIBarButtonItem(title: "", style: .Plain, target: self, action: "toSetPage")
//        设置图片并设置图片无渲染
        leftBarButton.image = UIImage(named: "set")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        self.navigationItem.leftBarButtonItem = leftBarButton
        self.navigationItem.titleView = UIImageView(image: UIImage(named: "nang"))
//        取消左边空隙
        let spacer = UIBarButtonItem(barButtonSystemItem: .FixedSpace, target: nil,
                                     action: nil)
        spacer.width = -10;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        return 1
//    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.tableView.rowHeight = 60
        return 5
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Itemscell")
        return cell!
    }
    
    

}

