/*
 * FILE : HangTimerViewController.swift
 * PROJECT : PROG3230 - Mobile Application Development II - Assignment 1
 * PROGRAMMERS : David Pitter, Lev Cocarell, Carl Wilson, Bobby Vu
 * FIRST VERSION : 2018-09-15
 * DESCRIPTION :
 * This file contains the source code for the HangTimerView Controller. It is a simple stop watch widget
 * intended for indoor rock climbing practice. It is constructed using Swift's built in Task Management class:
 * Timer. It also utilizes the button control. This information will eventually be stored in next iteration of
 * project.
 */

import UIKit

class HangTimerViewController: UIViewController {
    
    @IBOutlet weak var label_Time: UILabel!
    
    
    var time = 0  // var time us used to keep track of user's time
    var timer = Timer() // instantiating Swift's timer class
    
    // This event starts the hang timer caller by assigning the scheduledTimer method to timer object.
    // Schedule timer creates a new timer and schedules it on the current run loop.
    // It uses our hangTimeTracker method as the selector, to keep track of user's hang time.
    @IBAction func button_Start(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(HangTimerViewController.hangTimeTracker), userInfo: nil, repeats: true)
    }
    
    // This evemt sets the user's hang time to zero, and invalidates the timer method.
    // Invalidate stops the timer from ever firing again and requests its removal from its run loop. - Apple Documentation
    @IBAction func button_Stop(_ sender: Any) {
        time = 0
     
        timer.invalidate()
        // User's time is displayed to label
        label_Time.text = ("0")
    }
    
    
    // This function increments the user's time and casts it to a string
    @objc func hangTimeTracker()
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


