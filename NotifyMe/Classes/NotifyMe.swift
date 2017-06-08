//
//  NotifyMe.swift
//  Pods
//
//  Created by Fritiof Gure on 2017-06-08.
//
//

import UIKit

public class NotifyMe {
    
    var notifications = [UIView]()
    
    public func presentNotification(inView view: UIView, backgroundColor: UIColor, height: CGFloat = 60.0, text: String, textColor: UIColor = .black) {
        
        let notifyView = UIView(frame: CGRect(x: view.bounds.minX, y: view.bounds.minY, width: view.bounds.size.width, height: 0))
        let label = UILabel(frame: CGRect(origin: notifyView.bounds.origin, size: CGSize(width: notifyView.bounds.size.width, height: notifyView.bounds.size.height)))
        
        notifyView.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.leadingAnchor.constraint(equalTo: notifyView.layoutMarginsGuide.leadingAnchor).isActive = true
        label.topAnchor.constraint(equalTo: notifyView.topAnchor, constant: 10).isActive = true
        label.trailingAnchor.constraint(equalTo: notifyView.layoutMarginsGuide.trailingAnchor).isActive = true
        label.bottomAnchor.constraint(equalTo: notifyView.bottomAnchor).isActive = true
        
        label.text = text
        label.textAlignment = .center
        label.font = UIFont(name: "HelveticaNeue-Light", size: 11)
        label.textColor = textColor
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.lineBreakMode = .byTruncatingTail
        
        notifyView.backgroundColor = backgroundColor
        
        view.addSubview(notifyView)
        
        notifyView.translatesAutoresizingMaskIntoConstraints = false
        notifyView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        notifyView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        notifyView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        notifyView.heightAnchor.constraint(equalToConstant: height).isActive = true
        
        UIView.animate(withDuration: 0.5) {
            view.layoutIfNeeded()
        }
        
        notifications.append(notifyView)
    }
    
    public func removeNotifications() {
        notifications.forEach({ (view) in
            view.removeFromSuperview()
        })
    }
    
    public init() {
        
    }
}
