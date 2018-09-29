//
//  HangTimerViewController.swift
//  GeoClimb
//
//  Created by Lev Cocarell on 2018-09-29.
//  Copyright © 2018 qualityoverload2. All rights reserved.
//

import UIKit

class HangTimerViewController: UIViewController {
    
    @IBOutlet weak var label_Time: UILabel!
    
    // var to keep track of time
    var time = 0
    var timer = Timer()
    
    
    @IBAction func button_Start(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(HangTimerViewController.timeTracker), userInfo: nil, repeats: true)
    }
    

    
    @IBAction func button_Reset(_ sender: Any) {
       timer.invalidate()
       time = 0
       label_Time.text = ("0")
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


