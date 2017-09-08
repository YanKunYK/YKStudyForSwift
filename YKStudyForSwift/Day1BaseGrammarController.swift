//
//  Day1BaseGrammarController.swift
//  YKStudyForSwift
//
//  Created by 梁小广 on 2017/9/8.
//  Copyright © 2017年 闫昆. All rights reserved.
//

import UIKit

class Day1BaseGrammarController: UIViewController {
    
    
    public var titleStr: String?
    
    var age  = 2
    
    
    var phone:Int?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.red
        self.title = titleStr
        
        age = 25
        
        
        
       //? 就是表示变量为可选变量     ！就是去取可选变量的 非空值
        
        //! 也可以标识变量 为可选变量
        
        let  aaaaa = 111
        
        print(aaaaa)
        
        
        
        let a:Int!
        
        a = 11
        
        print(a)
        
        
        var aArray = [String]()
        
        aArray.append("sex")
        
        var jnfjanf = [String]()
        
        jnfjanf.append("asfasfa")

        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
