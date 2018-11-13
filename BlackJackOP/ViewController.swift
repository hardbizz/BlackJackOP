//
//  ViewController.swift
//  BlackJackOP
//
//  Created by MacBook on 27/10/2018.
//  Copyright © 2018 Bizz. All rights reserved.
//

import UIKit
var nameGamer = ""
class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var buttonGo: UIButton!
    @IBOutlet weak var fromTextFiledName: UITextField!
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonGo.layer.cornerRadius = 27.5
        buttonGo.layer.masksToBounds = true
        textView.layer.cornerRadius = 25
        
      
        fromTextFiledName.delegate = self
      
        
        
        
        
    
    
 

    }
    @IBAction func startButtonclick() {
        nameGamer = textView.text!
        //fromTextFiledName.becomeFirstResponder()
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return false
}
    
}


