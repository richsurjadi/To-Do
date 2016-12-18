//
//  CompleteTaskViewController.swift
//  To Do
//
//  Created by Richard Surjadi on 12/18/16.
//  Copyright © 2016 Richard Surjadi. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    @IBOutlet weak var taskLabel: UILabel!
    
    var task = Task()
    var previousVC = TasksViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
       
        if task.important {
           taskLabel.text = "\(task.name) ‼️"
        } else {
           taskLabel.text = task.name
        }
    }

    @IBAction func doneTapped(_ sender: AnyObject) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)

    }
  
    @IBOutlet weak var completeTapped: UIButton!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
