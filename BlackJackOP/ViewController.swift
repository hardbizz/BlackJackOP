//
//  ViewController.swift
//  BlackJackOP
//
//  Created by MacBook on 27/10/2018.
//  Copyright © 2018 Bizz. All rights reserved.
//

import UIKit
var nameGamer = ""
class ViewController: UIViewController {

    @IBOutlet weak var fromTextFiledName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
     // singleGame()
       nameGamer = fromTextFiledName.text!

    
     
        
        
    
    
 

    }
    @IBAction func startButtonclick() {
        nameGamer = fromTextFiledName.text!
    }
}



