/*
 * FILE : HomeViewController.swift
 * PROJECT : PROG3230 - Mobile Application Development II - Assignment 1
 * PROGRAMMERS : David Pitters, Lev Cocarell, Carl Wilson, Bobby Vu
 * FIRST VERSION : 2018-09-15
 * DESCRIPTION :
 * This file contains the source code for the HomeViewController which currently acts as our home
 * page. This page is purely read only right now - but we plan on doing more with it in the future.
 */

import UIKit
import MapKit



class MapViewController: UIViewController {
  
    @IBOutlet weak var map: MKMapView!
    
   
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var centerLocation = CLLocationCoordinate2DMake(43.441997, -80.475146)
        var mapSpan = MKCoordinateSpanMake(0.1, 0.1)
       
        var mapRegion = MKCoordinateRegionMake(centerLocation, mapSpan)
        
         let anni = MKPointAnnotation()
        anni.coordinate = centerLocation
        anni.title = "Grand River Rocks"
        anni.subtitle = "Local Gym"
        
        
        self.map.setRegion(mapRegion, animated: true)
        self.map.addAnnotation(anni)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

