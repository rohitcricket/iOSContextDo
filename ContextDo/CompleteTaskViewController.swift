//
//  CompleteTaskViewController.swift
//  ContextDo
//
//  Created by ROHIT GUPTA on 10/24/16.
//  Copyright © 2016 ROHIT GUPTA. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    var task = Task()
    
    
    @IBOutlet weak var taskLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        if task.important {
            taskLabel.text = "❗️\(task.name)"
        } else {
            taskLabel.text = task.name
        }
    }

    
    @IBAction func completeTapped(_ sender: AnyObject) {
    }

}
