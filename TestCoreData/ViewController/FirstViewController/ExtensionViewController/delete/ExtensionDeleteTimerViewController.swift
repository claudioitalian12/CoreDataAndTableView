//
//  ExtensionGestureDelateTimerViewController.swift
//  TimeKick
//
//  Created by claudio Cavalli on 15/10/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit
import CoreData

extension TimerViewController{
    
    
    func delete(ElementIndex: Int) {
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
        var a = try! managedContext.fetch(fetchRequest)
        
        if(TimerRowData.count - 1 > -1){
            a.removeLast()
            managedContext.delete(TimerRowData[ElementIndex])
            TimerRowData.remove(at: ElementIndex)
            try! managedContext.save()
            self.tableView.reloadData()}
    }
    
    
}
