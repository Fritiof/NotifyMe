//
//  NotifyMe.swift
//  Pods
//
//  Created by Fritiof Gure on 2017-06-08.
//
//

import UIKit

public typealias actionHandler = (Bool) -> ()

public class NotifyMe: NSObject {
    
    // Public properties
    
    private var notificationHeight: CGFloat
    private var notificationBackgroundColor: UIColor
    private var notificationTextColor: UIColor
    private var handler: actionHandler?
    
    // Public methods
    
    public func presentNotification(inView view: UIView, text: String, actionHandler: @escaping actionHandler) {
        let notifyView = NotificationView.instanceFromNib()
        let notification = Notification(notificationView: notifyView, backgroundColor: notificationBackgroundColor, height: notificationHeight, text: text, textColor: notificationTextColor)
        
        notifyView.setupView(superView: view, notification: notification)
        
        let tap = NotifyMeTapGesture(target: self, action: #selector(userTappedNotification(_:)))
        tap.actionHandler = actionHandler
        notifyView.addGestureRecognizer(tap)
        
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
    
    @objc func userTappedNotification(_ sender: NotifyMeTapGesture) {
        sender.actionHandler?(true)
    }
    
    public init(backgroundColor: UIColor = .purple, height: CGFloat = 60, textColor: UIColor = .white) {
        self.notificationBackgroundColor = backgroundColor
        self.notificationHeight = height
        self.notificationTextColor = textColor
    }
}
