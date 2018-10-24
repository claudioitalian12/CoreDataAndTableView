//
//  ExtensionAlertViewController.swift
//  TimeKick
//
//  Created by claudio Cavalli on 15/10/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//

import UIKit
import CoreData

extension TimerViewController{
    
   @IBAction func AddData(_ sender: UIBarButtonItem) {
    
    let Alert = UIAlertController(title: "New Subject and Time",
                                  message: "Add Study Time\n\n\n\n\n\n\n\nSubject Name",
                                  preferredStyle: .alert)
    
    
    
    let picker = UIDatePicker(frame: CGRect(x: 5, y: 50, width: 260 , height: 120))
    picker.datePickerMode =  UIDatePicker.Mode.countDownTimer
    PickerValue.dateFormat = "hh : mm"
    
    
    let Cancel = UIAlertAction(title: "Cancel", style: .cancel)
    let Save = UIAlertAction(title: "Save", style: .default){
        [unowned self] action in
        
        guard let textField = Alert.textFields?.first,
            let nameToSave = textField.text else {
                return
        }
        print(nameToSave)
        self.save(name: nameToSave, time: self.PickerValue.string(from: picker.date) )
        
        self.tableView.reloadData()
    }
    
    
    Alert.view.addSubview(picker)
    Alert.addTextField()
    Alert.addAction(Cancel)
    Alert.addAction(Save)
    
    present(Alert, animated: true)
    
    }
    
  
    
}
