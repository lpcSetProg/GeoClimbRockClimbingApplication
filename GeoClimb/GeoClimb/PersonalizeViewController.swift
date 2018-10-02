/*
 * FILE : PersonalizeViewController.swift
 * PROJECT : PROG3230 - Mobile Application Development II - Assignment 1
 * PROGRAMMERS : David Pitters, Lev Cocarell, Carl Wilson, Bobby Vu
 * FIRST VERSION : 2018-09-15
 * DESCRIPTION :
 * This file contains the source code for the PersonalizeViewController. 
 */

import UIKit

class PersonalizeViewController: UIViewController {
  
    @IBOutlet weak var label_Name: UILabel!
 
    @IBOutlet weak var label_Location: UILabel!
    
    @IBOutlet weak var label_LocationCust: UILabel!
    
    @IBAction func button_SubmitLocation(_ sender: Any) {
        
        label_Location.text = textField_Location.text
        label_Location.isHidden = false
    }
    
    
    @IBOutlet weak var textField_name: UITextField!
    @IBOutlet weak var textField_Location: UITextField!
    
    @IBAction func button_Submit(_ sender: Any) {
        label_Name.text = textField_name.text
        label_Name.isHidden = false
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label_Name.isHidden = true
        label_Location.isHidden = true
   

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

