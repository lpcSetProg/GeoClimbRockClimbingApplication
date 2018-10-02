/*
 * FILE : TableViewController.swift
 * PROJECT : PROG3230 - Mobile Application Development II - Assignment 1
 * PROGRAMMERS : David Pitters, Lev Cocarell, Carl Wilson, Bobby Vu
 * FIRST VERSION : 2018-09-15
 * DESCRIPTION :
 * This file contains the source code for the TableViewController.
 */

import UIKit

var routes = ["Easy Peasy", "Nomads Cave","Farewell to Arms", "The Goat Face", "Alpaca Hill", ]
var routesDesc = ["Located near back corner of Grand River Rocks gym in Kitchener. This climbing involves minimal technical moves. Good route for beginners.",
                  "Located near back corner of Grand River Rocks gym in Kitchener. This climbing involves more complicated technical moves. Good intermediate route. Pay attention.",
                  "Located near front of London rock climbing gym in Kitchener. This climbing involves very complicated technical moves. Advanced route. Pay very close attention.",
                  "Located near front of Tobermory rock climbing gym. This climbing involves very complicated technical moves. Advanced route. Good luck -- you will need it!.",
                  "Located near back corner of Grand River Rocks gym in Kitchener. Super difficult. Bring lunch -- you will be there all day."]
var routesHeight = ["5 meters", "6 meters", "9 meters", "4 Meters", "3.4 Meters"]
var routesRating = ["5.5", "5.7", "5.11a+", "5.10a", "5.10c"]
var routesLocation = ["Kitchener", "Kitchener", "London", "Tobermory", "Kitchener"]



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
    
    // via index selection - you can access item in view controller - - listens for taps on cells.
    // check if cell already has accessory type
    // place check mark
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue_routes", sender: self)
    }
    
}
