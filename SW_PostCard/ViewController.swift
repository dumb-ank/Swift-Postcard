//
//  ViewController.swift
//  SW_PostCard
//
//  Created by Ankur Bose on 30/10/14.
//  Copyright (c) 2014 Ankur Bose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var showMessage: UILabel!
    @IBOutlet weak var enterName: UITextField!
    @IBOutlet weak var enterMessage: UITextField!
    @IBOutlet weak var sendMail: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        showMessage.hidden = false
        showMessage.text = enterMessage.text
        showMessage.textColor = UIColor.redColor()
        
        enterMessage.text = ""
        enterMessage.resignFirstResponder()
        
        sendMail.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

