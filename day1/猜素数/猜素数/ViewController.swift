//
//  ViewController.swift
//  猜素数
//
//  Created by 汤智丰 on 15/2/1.
//  Copyright (c) 2015年 汤智丰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var InputNum: UITextField!
    
    @IBOutlet weak var Result: UILabel!

    @IBAction func PrimeTest(sender: UIButton) {
        var InputInt = InputNum.text.toInt()
        var loop = 2
        
        while loop < InputInt{
            if InputInt!%loop != 0{
                loop = loop+1
            }
            else {
                Result.text = "这不是一个素数"
                break
            }
            Result.text = "这是一个素数"
        
        }
    }

   
}

