//
//  ViewController.swift
//  TimeKick
//
//  Created by claudio Cavalli on 15/10/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit
import CoreData

class TimerViewController: UIViewController{
     var TimerRowData: [NSManagedObject] = []
     var PickerValue = DateFormatter()

    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    }
   
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //1
        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
                return
        }
        
        let managedContext =
            appDelegate.persistentContainer.viewContext
        
        //2
        let fetchRequest =
            NSFetchRequest<NSManagedObject>(entityName: "TimerData")
        
        //3
        
        do {
            TimerRowData = try managedContext.fetch(fetchRequest)
            
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }

    
   
    
}

