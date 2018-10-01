/*
 * FILE : HangTimerViewController.swift
 * PROJECT : PROG3230 - Mobile Application Development II - Assignment 1
 * PROGRAMMERS : David Pitter, Lev Cocarell, Carl Wilson, Bobby Vu
 * FIRST VERSION : 2018-09-15
 * DESCRIPTION :
 * This file contains the source code for
 */

import UIKit

class HangTimerViewController: UIViewController {
    
    @IBOutlet weak var label_Time: UILabel!
    
    // var to keep track of time
    var time = 0
    var timer = Timer()
    
    
    @IBAction func button_Start(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(HangTimerViewController.timeTracker), userInfo: nil, repeats: true)
    }
    
    @IBAction func button_Stop(_ sender: Any) {
        time = 0
        label_Time.text = ("0")
         timer.invalidate()
    }
    
    
  
    
    // function called but start button timer
    // NEEDS COMMENTS
    @objc func timeTracker()
    {
        time += 1
        label_Time.text = String(time)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


