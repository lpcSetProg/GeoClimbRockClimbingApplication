//
//  TabBarController.swift
//  GeoClimb
//
//  Created by Carl Wilson on 2018-09-06.
//  Copyright © 2018 qualityoverload2. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    @IBOutlet var tabBarNav: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        let attrsNormal = [
            NSAttributedStringKey.foregroundColor: UIColor.black,
            NSAttributedStringKey.font: UIFont.systemFont(ofSize: 19.0)
        ]
        let attrsSelected = [
            NSAttributedStringKey.foregroundColor: UIColor.red,
            NSAttributedStringKey.font: UIFont.systemFont(ofSize: 19.0)
        ]
        UITabBarItem.appearance().setTitleTextAttributes(attrsNormal, for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes(attrsSelected, for: .selected)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

