//
//  CompleteTaskViewController.swift
//  ContextDo
//
//  Created by ROHIT GUPTA on 10/24/16.
//  Copyright © 2016 ROHIT GUPTA. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    var task : Task? = nil
    
    
    @IBOutlet weak var taskLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        if task!.important {
            taskLabel.text = "❗️\(task!.name!)"
        } else {
            taskLabel.text = task!.name!
        }
    }

    
    @IBAction func completeTapped(_ sender: AnyObject) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        navigationController!.popViewController(animated: true)
    }

}
