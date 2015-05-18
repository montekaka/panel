//
//  FeedViewController.swift
//  Panel
//
//  Created by Jia Chen on 5/17/15.
//  Copyright (c) 2015 com.bruinSquare. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var items = ["1","2"]
    
    @IBOutlet var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var nib = UINib(nibName: "FeedCell", bundle: nil)
        tableView?.registerNib(nib, forCellReuseIdentifier: "FeedCellIdentifier")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("FeedCellIdentifier") as! FeedCell
        //var cell =  UITableViewCell()
        
        cell.textLabel!.text = items[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        println("hi")
        var lineChartViewController = LineChartViewController(nibName: "LineChartViewController", bundle: nil)
        
        self.navigationController?.pushViewController(lineChartViewController, animated: true)
    }
}
