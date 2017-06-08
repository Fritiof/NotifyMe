//
//  ViewController.swift
//  NotifyMe
//
//  Created by fritiof@gure.se on 06/07/2017.
//  Copyright (c) 2017 fritiof@gure.se. All rights reserved.
//

import UIKit
import NotifyMe

class ViewController: UIViewController {
    
    let notifyMe = NotifyMe()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func notifyMeButtonTapped(sender: UIButton) {
        notifyMe.presentNotification(inView: view, backgroundColor: UIColor.purple, text: "Hey fucker")
    }
    
    @IBAction func removeNotificationTapped(sender: UIButton) {
        notifyMe.removeNotifications()
    }

}

