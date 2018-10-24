//
//  ExtensionSaveCellTimerViewController.swift
//  TimeKick
//
//  Created by claudio Cavalli on 15/10/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit
import CoreData

extension TimerViewController{
    
    func save(name: String,time: String) {
        
        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
                return
        }
        
        // 1
        let managedContext =
            appDelegate.persistentContainer.viewContext
        
        // 2
        let entity =
            NSEntityDescription.entity(forEntityName: "TimerData",
                                       in: managedContext)!
        
        let TimerData = NSManagedObject(entity: entity,
                                        insertInto: managedContext)
    
        // 3
    
            TimerData.setValue(name, forKeyPath: "name")
            TimerData.setValue(time, forKey: "time")

        
        // 4
        do {
            try managedContext.save()
            TimerRowData.append(TimerData)
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
    
}
