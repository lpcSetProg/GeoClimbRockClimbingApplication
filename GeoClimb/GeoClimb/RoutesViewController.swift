/*
 * FILE : RoutesViewController.swift
 * PROJECT : PROG3230 - Mobile Application Development II - Assignment 1
 * PROGRAMMERS : David Pitters, Lev Cocarell, Carl Wilson, Bobby Vu
 * FIRST VERSION : 2018-09-15
 * DESCRIPTION :
 * This file contains the source code for the RoutesViewController. It is populated via the
 * table data from the TableViewController.
 */

import UIKit

class RoutesViewController: UIViewController {
    
    @IBOutlet weak var output: UILabel!
    
    // The event handles the 'switch' control which indicates if a
    // user has ascended (climbed) a route before. We plan on building on this feature
    // in next iteration.
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
    
    // The labels, image views, and text views are populated depending on what table view items are
    // selected (as an index)
    @IBOutlet weak var label_RoutesTitle: UILabel!
    @IBOutlet weak var textview_RoutesDesc: UITextView!
    @IBOutlet weak var imageView_Routes: UIImageView!
    @IBOutlet weak var label_RoutesHeight: UILabel!
    @IBOutlet weak var label_RoutesRating: UILabel!
    @IBOutlet weak var label_RoutesLocation: UILabel!
    
    //Get the internationalization/localization from the appdelegate
    let delegate = UIApplication.shared.delegate as! AppDelegate
    var locale: Locale?
    
    @IBOutlet weak var infoScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set the locale
        locale = delegate.localeSelector
        
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

