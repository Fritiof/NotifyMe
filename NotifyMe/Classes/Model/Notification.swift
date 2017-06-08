//
//  Notification.swift
//  Pods
//
//  Created by Fritiof Gure on 2017-06-08.
//
//

import Foundation
import UIKit

struct Notification {
    
    private(set) var superView: UIView
    private(set) var notificationView: UIView
    private(set) var backgroundColor: UIColor
    private(set) var height: CGFloat
    private(set) var text: UILabel
    private(set) var textColor: UIColor
    private(set) var heightConstraint: NSLayoutConstraint
    
    func removeFromSuperView() {
        notificationView.removeFromSuperview()
    }
}
