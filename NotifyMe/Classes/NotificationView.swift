//
//  NotificationView.swift
//  Pods
//
//  Created by Fritiof Gure on 2017-06-09.
//
//

import UIKit

class NotificationView: UIView {
    
    @IBOutlet weak var label: UILabel!
    
    private var notification: Notification?
    
    func setupView(superView: UIView, notification: Notification) {
        superView.clipsToBounds = true
        self.notification = notification
        
        let newFrame = CGRect(x: superView.bounds.minX, y: superView.bounds.minY - notification.height, width: superView.bounds.size.width, height: notification.height)
        frame = newFrame
        
        label.text = notification.text
        label.textColor = notification.textColor
        
        self.backgroundColor = notification.backgroundColor
        
        superView.addSubview(self)
    }
    
    func show() {
        guard notification != nil else { return }
        frame.origin.y = 0
    }
    
    func hide() {
        guard let notification = notification else { return }
        frame.origin.y = -notification.height
    }
    
    class func instanceFromNib() -> NotificationView {
        let bundle = Bundle(for: NotificationView.self)
        return UINib(nibName: "NotificationView", bundle: bundle).instantiate(withOwner: nil, options: nil)[0] as! NotificationView
    }
}
