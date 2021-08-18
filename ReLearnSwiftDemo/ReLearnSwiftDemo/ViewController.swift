//
//  ViewController.swift
//  ReLearnSwiftDemo
//
//  Created by 杜红星 on 2021/8/5.
//

import UIKit
import MainBundle
import StrackLogBundle

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        HXLog()
        
        StrackLogBundle.trackLog("viewDidLoad")
    
    }


}

