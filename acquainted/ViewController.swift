//
//  ViewController.swift
//  acquainted
//
//  Created by Michelle Harvey on 12/29/15.
//  Copyright © 2015 Michelle Venetucci Harvey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var MainList: UITableView!
    
    let acquaintances = ["Mom", "Nick", "Aaron", "Anya", "Heather"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        MainList.delegate = self
        MainList.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel!.text = acquaintances[indexPath.item]
        
        return cell
    }


}

