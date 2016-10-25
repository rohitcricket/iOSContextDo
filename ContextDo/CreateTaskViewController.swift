//
//  CreateTaskViewController.swift
//  ContextDo
//
//  Created by ROHIT GUPTA on 10/24/16.
//  Copyright © 2016 ROHIT GUPTA. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    
    
    @IBOutlet weak var taskNameTextField: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    
    var previousVC = TasksViewController()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: AnyObject) {
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }


}
