//
//  ViewController.swift
//  YKStudyForSwift
//
//  Created by 梁小广 on 2017/9/8.
//  Copyright © 2017年 闫昆. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var tableview:UITableView?
    
    var dataArray:NSArray?
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "首页"
        
        self.view.backgroundColor = UIColor.white
        
        self.dataArray = ["基本语法","基本控件","啦啦啦啦","巴拉巴拉"]
        
        print(self.dataArray!)
        
        self.tableview = UITableView(frame:self.view.frame, style:.grouped)
        
        //http://blog.sina.com.cn/s/blog_6181a8cb0101eht7.html
        self.tableview!.delegate = self//? 和 ！ 的差别？
        
        self.tableview!.dataSource = self
        
        self.tableview!.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        self.view.addSubview(self.tableview!)
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (self.dataArray?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let idStr:String = "cell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: idStr, for: indexPath)
        
        cell.textLabel?.text = (self.dataArray?[indexPath.row] as! String)
        
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        
        return cell
        
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0
        {
            let VC1 = Day1BaseGrammarController()
            
            VC1.titleStr = (self.dataArray?[indexPath.row] as? String)
            
            self.navigationController?.pushViewController(VC1, animated: true)
            
        }
        
        if indexPath.row == 1
        {
            let VC2 = Day1UIController()
            
            self.navigationController?.pushViewController(VC2, animated: true)
            
        }
        
        
        
    }
    
    
    
    func ykselect()   {
        
        print("这是个方法")
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

