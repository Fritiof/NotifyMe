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
    
    public func presentNotification(inView view: UIView, backgroundColor: UIColor, height: CGFloat = 60.0, text: String, textColor: UIColor = .black) {
        
        let notifyView = UIView(frame: CGRect(x: view.bounds.minX, y: view.bounds.minY, width: view.bounds.size.width, height: 0))
        let label = UILabel(frame: CGRect(origin: notifyView.bounds.origin, size: CGSize(width: notifyView.bounds.size.width, height: notifyView.bounds.size.height)))
        
        notifyView.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.leadingAnchor.constraint(equalTo: notifyView.layoutMarginsGuide.leadingAnchor).isActive = true
        let top = label.topAnchor.constraint(equalTo: notifyView.topAnchor, constant: 17)
        top.priority = 750
        top.isActive = true
        label.trailingAnchor.constraint(equalTo: notifyView.layoutMarginsGuide.trailingAnchor).isActive = true
        label.bottomAnchor.constraint(equalTo: notifyView.bottomAnchor, constant: -17).isActive = true
        
//        label.backgroundColor = UIColor.blue
        
        label.text = text
        label.textAlignment = .center
        label.font = UIFont(name: "HelveticaNeue-Light", size: 12)
        label.textColor = textColor
        label.numberOfLines = 0
//        label.adjustsFontSizeToFitWidth = true
//        label.minimumScaleFactor = 0.5
        label.lineBreakMode = .byTruncatingTail
        
        notifyView.backgroundColor = backgroundColor
        
        view.addSubview(notifyView)
        
        notifyView.translatesAutoresizingMaskIntoConstraints = false
        notifyView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        notifyView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        notifyView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        let heightConstraint = notifyView.heightAnchor.constraint(lessThanOrEqualToConstant: 150)
        heightConstraint.isActive = true
        
        let notification = Notification(superView: view, notificationView: notifyView, backgroundColor: backgroundColor, height: height, text: label, textColor: textColor, heightConstraint: heightConstraint)
        
        UIView.animate(withDuration: 0.5, animations: {
            view.layoutIfNeeded()
            }) { [weak self] _ in
                self?.removeNotificationWithAnimation(notification: notification)
        }
    }
    
    // Methods
    
    func removeNotificationWithAnimation(notification: Notification) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(10), execute: { _ in
            
            notification.heightConstraint.constant = 0

            UIView.animate(withDuration: 0.5, animations: { _ in
//                notification.text.textColor = UIColor.clear
                notification.superView.layoutIfNeeded()
            })
        })
    }
    
    public init() {
        
    }
}
