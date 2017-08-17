//
//  ViewController.swift
//  ListView Tutorial
//
//  Created by Waheduzzaman on Aug/17/17.
//  Copyright © 2017 Waheduzzaman. All rights reserved.
//

import UIKit

class ViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var myTableView: UITableView!
    
    var itemArray = ["Riashad","Wahed", "Rafique", "Shafique","zaman","noor","mac","pro","linux"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //do some networking stuff or load data from database and create a list or array
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //mendatory because table view needs to know how many rows it will be working on
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count;
    }


    //mendatory because table view needs to know what are those cell item and what the contains
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier:"defaultCell"); //using the default cell provided by ios
        cell.textLabel?.text = itemArray[indexPath.row];
        return cell;
        
    }
}

