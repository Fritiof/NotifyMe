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
    
    @IBOutlet weak var smallView: UIView!
    
    var notifyMe: NotifyMe?
    var notifyMeSmall: NotifyMe?

    override func viewDidLoad() {
        super.viewDidLoad()
        notifyMe = NotifyMe(backgroundColor: .white, height: 30, textColor: .black)
        notifyMeSmall = NotifyMe(backgroundColor: .white, height: 100, textColor: .black)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    @IBAction func notifyMeButtonTapped(sender: UIButton) {
        notifyMe?.presentNotification(inView: self.view, text: "dooooh", actionHandler: nil)
        notifyMeSmall?.presentNotification(inView: self.smallView, text: "lalala") { handler in
            print("winning")
        }

    }

}



