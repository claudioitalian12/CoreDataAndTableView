//
//  ExtensionTimerTableController.swift
//  TimeKick
//
//  Created by claudio Cavalli on 15/10/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit
import CoreData

extension TimerViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TimerRowData.count
    }
   
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Subject = TimerRowData[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TimerTableViewCell
       
        cell.Subject.text = Subject.value(forKey: "name") as? String
        
        cell.TimeSet.text = Subject.value(forKey: "time") as? String
        
        return cell

    }
    
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete{
            delete(ElementIndex: indexPath.row)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "spritekitsegue"){
      
            let vc = segue.destination as! ReceiveDataController
            let v = tableView.indexPathsForSelectedRows?[0]
            // let cell = tableV.cellForRow(at: v!) as! TableViewCell
            vc.Subjeckt = TimerRowData[v!.row].value(forKey: "name") as! String
            vc.TimeSet =  TimerRowData[v!.row].value(forKey: "time") as! String
          
            
        }
        
    }
    
    
    
    
}
