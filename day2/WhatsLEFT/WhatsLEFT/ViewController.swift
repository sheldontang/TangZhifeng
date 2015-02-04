//
//  ViewController.swift
//  WhatsLEFT
//
//  Created by 汤智丰 on 15/2/3.
//  Copyright (c) 2015年 汤智丰. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    var MemoList = [Memo]()
    @IBAction func unwindToThisViewController(segue: UIStoryboardSegue) {
        
    }
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return MemoList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
    let cell =
       tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = MemoList[indexPath.row].title
        return cell 
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            let destinationViewController = segue.destinationViewController as DetailViewController
            destinationViewController.memo = MemoList[(self.tableView.indexPathForSelectedRow()?.row)!]
            //MemoList[(self.tableView.indexPathForSelectedRow()?.row)!]
        }
    }
  
}

