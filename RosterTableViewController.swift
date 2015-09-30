//
//  RosterTableViewController.swift
//  IOSFoundationHomework3
//
//  Created by Regular User on 9/29/15.
//  Copyright © 2015 Lynn Kuhlman. All rights reserved.
//

import UIKit

class RosterTableViewController: UIViewController, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    
    let person1 = Person(fName: "Fred", lName: "Flintstone")
    let person2 = Person(fName: "Betty", lName: "Rubble")
    let person3 = Person(fName: "Barney", lName: "Rubble")
    let person4 = Person(fName: "Wilma", lName: "Flintstone")
    let person5 = Person(fName: "Dino", lName: "Flintstone")
    
    let names = [Person(fName: "Fred", lName: "Flintstone"),
    Person(fName: "Betty", lName: "Rubble"),
    Person(fName: "Barney", lName: "Rubble"),
    Person(fName: "Wilma", lName: "Flintstone"),
    Person(fName: "Dino", lName: "Flintstone")]
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
            return names.count
    }
    
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:
        NSIndexPath) -> UITableViewCell {
            
     
       let cell = tableView.dequeueReusableCellWithIdentifier("RosterCell", forIndexPath:indexPath )
         
        let name = (names[indexPath.row].firstName as String) + (names[indexPath.row].lastName as String)
        cell.textLabel?.text = name as String
            
        cell.backgroundColor = UIColor.whiteColor()
            
            if indexPath.row == 0 {
                cell.backgroundColor = UIColor.yellowColor()
            }
        
            
       return cell
            
    }
    
    

}
