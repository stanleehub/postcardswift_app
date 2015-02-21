//
//  ViewController.swift
//  postcardswift
//
//  Created by Stan on 2/20/15.
//  Copyright (c) 2015 Andre Stanley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNametextfield: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButton(sender: UIButton)
    {
        messageLabel.hidden = false
        messageLabel.text = "Hello world"
        
        
        
        //challenge one
        nameLabel.hidden = false
        nameLabel.text = enterNametextfield.text
        nameLabel.textColor = UIColor.blueColor()
        enterNametextfield.text = ""
        enterNametextfield.resignFirstResponder()
    
        //message fields code
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor=UIColor.redColor()
        enterMessageTextField.text = ""
        
        enterMessageTextField.resignFirstResponder() //make keyboard dissappear.
        
        //change button title.
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)

        //adding a comment to test commit
    
    }
}

