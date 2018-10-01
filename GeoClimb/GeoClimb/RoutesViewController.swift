/*
 * FILE : ViewController.swift
 * PROJECT : PROG3230 - Mobile Application Development II - Assignment 1
 * PROGRAMMERS : David Pitter, Lev Cocarell, Carl Wilson, Bobby Vu
 * FIRST VERSION : 2018-09-15
 * DESCRIPTION :
 * This file contains the source code for
 */

import UIKit

class RoutesViewController: UIViewController {
    
    
        @IBOutlet weak var output: UILabel!
    
        @IBAction func `switch`(_ sender: UISwitch) {
                if (sender.isOn == true)
                {
                    output.text = "Yes."
                }
                else
                {
                    output.text = "Unattempted."
                }
        }
    
        @IBOutlet weak var label_RoutesTitle: UILabel!
        @IBOutlet weak var textview_RoutesDesc: UITextView!
        @IBOutlet weak var imageView_Routes: UIImageView!
        @IBOutlet weak var label_RoutesHeight: UILabel!
        @IBOutlet weak var label_RoutesRating: UILabel!
        @IBOutlet weak var label_RoutesLocation: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label_RoutesTitle.text = routes[myIndex]
        textview_RoutesDesc.text = routesDesc[myIndex]
        label_RoutesHeight.text = routesHeight[myIndex]
        label_RoutesRating.text = routesRating[myIndex]
        label_RoutesLocation.text = routesLocation[myIndex]
        imageView_Routes.image = UIImage(named: routes[myIndex] + ".png")
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

