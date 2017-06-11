//
//  NotifyMe.swift
//  Pods
//
//  Created by Fritiof Gure on 2017-06-08.
//
//

import UIKit

public class NotifyMe {
    
    // public properties
    
    // TODO: - create public properties
    
    // Public methods
    
    public func presentNotification(inView view: UIView, backgroundColor: UIColor = UIColor.purple, height: CGFloat = 60.0, text: String, textColor: UIColor = .white) {
        let notifyView = NotificationView.instanceFromNib()
        let notification = Notification(notificationView: notifyView, backgroundColor: backgroundColor, height: height, text: text, textColor: textColor)
        
        notifyView.setupView(superView: view, notification: notification)
        
        UIView.animate(withDuration: 0.5, animations: {
            notifyView.show()
            view.layoutIfNeeded()
        }) { [weak self] _ in
            self?.removeNotificationWithAnimation(notification: notification)
        }
    }
    
    // Methods
    
    func removeNotificationWithAnimation(notification: Notification) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(3), execute: { _ in
            
            UIView.animate(withDuration: 0.5, animations: { _ in
                notification.notificationView.hide()
                notification.notificationView.superview?.layoutIfNeeded()
            }) { _ in
                notification.notificationView.removeFromSuperview()
            }
        })
    }
    
    public init() {
        
    }
}
