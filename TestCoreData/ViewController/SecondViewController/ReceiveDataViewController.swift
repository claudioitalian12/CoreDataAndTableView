//
//  SpritekitTimerViewController.swift
//  TimeKick
//
//  Created by claudio Cavalli on 15/10/2018.
//  Copyright © 2018 claudio Cavalli. All rights reserved.
//


import UIKit

class ReceiveDataController: UIViewController {
    var TimeSet = String()
    var Subjeckt = String()
    
    @IBOutlet weak var Name: UILabel!
    
    @IBOutlet weak var data: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        Name.text = Subjeckt
        data.text = TimeSet
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
