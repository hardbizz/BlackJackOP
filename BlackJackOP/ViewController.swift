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
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       buttonGo.layer.cornerRadius = 37.5
        buttonGo.layer.masksToBounds = true
        textView.layer.cornerRadius = 25
        
       // buttonGo.isEnabled = false
        
       //adjustUITextViewHeight(textView)
      // nameGamer = textView.text!
        
       startButtonclick()
        
        if fromTextFiledName.text != "" {
            buttonGo.isEnabled = true
        }
        
        
    
    
 

    }
    @IBAction func startButtonclick() {
        nameGamer = textView.text!
    }
    
    func adjustUITextViewHeight(_ arg : UITextView)
    {
        arg.translatesAutoresizingMaskIntoConstraints = true
        arg.sizeToFit()
        arg.isScrollEnabled = false
    }
}



