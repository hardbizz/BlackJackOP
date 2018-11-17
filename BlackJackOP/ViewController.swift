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
    @IBOutlet weak var textView: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        buttonGo.layer.cornerRadius = 45
        buttonGo.layer.masksToBounds = true
        textView.layer.cornerRadius = 28
        textView.layer.masksToBounds = true
        
      
        fromTextFiledName.delegate = self
      
        //buttonGo.isUserInteractionEnabled = false
        buttonGo.isUserInteractionEnabled = false
        
        
    
    }
    
    @IBAction func startButtonclick() {
        nameGamer = textView.text!
        //fromTextFiledName.becomeFirstResponder()
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return false
        
}

    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let text = (textView.text! as NSString).replacingCharacters(in: range, with: string)

        if !text.isEmpty{
            buttonGo.isUserInteractionEnabled = true
        } else {
            buttonGo.isUserInteractionEnabled = false
        }
        
        return true
    }
        
    
    // return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
    
    
    
    
}


