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
//        notifyMe.presentNotification(inView: view, backgroundColor: UIColor.purple, text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", textColor: UIColor.white)
        
//        notifyMe.presentNotification(inView: self.view, backgroundColor: UIColor.blue, height: 60, text: "Hey mofo!", textColor: UIColor.white)
        notifyMe?.presentNotification(inView: self.view, text: "dooooh")
        notifyMeSmall?.presentNotification(inView: self.smallView, text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

    }

}



