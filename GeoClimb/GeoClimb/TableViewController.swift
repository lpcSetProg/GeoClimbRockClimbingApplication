/*
 * FILE : TableViewController.swift
 * PROJECT : PROG3230 - Mobile Application Development II - Assignment 1
 * PROGRAMMERS : David Pitter, Lev Cocarell, Carl Wilson, Bobby Vu
 * FIRST VERSION : 2018-09-15
 * DESCRIPTION :
 * This file contains the source code for
 */

import UIKit

var routes = ["Easy Peasy", "Nomads Cave","Farewell to Arms", "The Goat Face", "Alpaca Hill", ]
var routesDesc = ["Located near corner of gym. Climbing involving technical moves and protective hardware in case of a fall. Often leads to damadge.",
                  "Would die if I fell? Probably but the ground is bumpy. Use a rope, but don't place protection up too high.",
                  "After thorough inspection you conclude this move is obviously impossible; however, occasionally someone actually accomplishes it. Since there is nothing for a handhold, grab it with both hands.",
                  "",
                  ""]
var routesHeight = ["5 meters", "6 meters", "9 meters", "4 Meters", "3.4 Meters"]
var routesRating = ["5.5", "5.7", "5.11a+", "5.10a", "5.10c"]
var routesLocation = ["Kitchener, On", "Kitchener, On", "London, On", "Tobermory, ON", "Kitchener, ON"]



var myIndex = 0

class TableViewController: UITableViewController {


    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
       
        return routes.count
    }
    
    

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = routes[indexPath.row]
        cell.selectionStyle = UITableViewCellSelectionStyle.blue

        return cell
    }

    // via index selection - you can access item in view controller - - listens for taps on cells -- check if cell already has accessory type
    // place check mark
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
       
        tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark
        
    
        
        
        myIndex = indexPath.row
       
        performSegue(withIdentifier: "segue_routes", sender: self)

    }
    
    

}
