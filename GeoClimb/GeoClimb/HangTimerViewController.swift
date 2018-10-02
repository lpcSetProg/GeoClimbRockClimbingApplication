/*
 * FILE : HangTimerViewController.swift
 * PROJECT : PROG3230 - Mobile Application Development II - Assignment 1
 * PROGRAMMERS : David Pitters, Lev Cocarell, Carl Wilson, Bobby Vu
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
    
    
    var time = 0.00  // var time us used to keep track of user's time
    weak var timer = Timer() // instantiating Swift's timer class
    
    // This button starts the hang timer caller by assigning the scheduledTimer method to timer object.
    // Schedule timer creates a new timer and schedules it on the current run loop. It uses our hangTimeTracker method as the selector, to keep track of user's hang time.
    @IBAction func button_Start(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(HangTimerViewController.hangTimeTracker), userInfo: nil, repeats: true)
    }
    
    // This button sets the user's hang time to zero, and invalidates the timer method.
    // Invalidate stops the timer from ever firing again and requests its removal from its run loop. - Apple Documentation
    @IBAction func button_Stop(_ sender: Any) {
        // User's time is displayed to label
        //If the timer is stopped, reset it to 0
        //Otherwise, pause the timer
        if (timer == nil){
            time = 0.00
            label_Time.text = ("0.00")
        } else {
            timer?.invalidate()
        }
    }
    
    // Formats a number to have a maximum of 2 digits
    //From Igor Pustylnick's WorldTrotter ConversionViewController in Module 4 on econestoga.ca
    let numberFormatter: NumberFormatter = {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 2
        return nf
    }()
    
    // This function increments the user's time and casts it to a string
    @objc func hangTimeTracker()
    {
        time += 0.01
        label_Time.text = numberFormatter.string(from: NSNumber(value: time))
        
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


