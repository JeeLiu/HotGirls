//
//  ViewController.swift
//  HotGirls
//
//  Created by 臧其龙 on 15/5/18.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    var starView:StarView = StarView(frame: CGRectMake(0, 0, 100, 100))
    var num:Int = 99
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.blackColor()
        
        starView.center = self.view.center
        self.view.addSubview(starView)
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func startAnimation(){
        num = Int(arc4random_uniform(99))
        starView.startLoadNumber(num)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
