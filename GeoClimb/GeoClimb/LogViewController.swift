//
//  LogViewController.swift
//  GeoClimb
//
//  Created by Carl Wilson on 2018-09-22.
//  Copyright © 2018 qualityoverload2. All rights reserved.
//

import UIKit

class LogViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var btnDoStuff: UIButton!
    
    @IBAction func btnDoStuffTouchUpInside(_ sender: UIButton) {
        tableView.beginUpdates()
        tableView.insertRows(at: [IndexPath.init(row: 0, section: 0)], with: .automatic)
        tableView.endUpdates()
    }
}