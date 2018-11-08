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

    @IBOutlet weak var buttonGo: UIButton!
    @IBOutlet weak var fromTextFiledName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       buttonGo.layer.cornerRadius = 15
       // buttonGo.isEnabled = false
        
    
       nameGamer = fromTextFiledName.text!
        
       startButtonclick()
        
        if fromTextFiledName.text != "" {
            buttonGo.isEnabled = true
        }
        
        
    
    
 

    }
    @IBAction func startButtonclick() {
        nameGamer = fromTextFiledName.text!
    }
}



