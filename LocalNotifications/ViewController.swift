//
//  ViewController.swift
//  LocalNotifications
//
//  Created by Carlos Castellanos on 22/06/16.
//  Copyright © 2016 Carlos Castellanos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

@IBAction func sendNotification(sender: UIButton) {
        let localNotification = UILocalNotification()
        localNotification.fireDate = NSDate(timeIntervalSinceNow: 5)
        localNotification.alertBody = "new Blog Posted at iOScreator.com"
        localNotification.timeZone = NSTimeZone.defaultTimeZone()
        localNotification.applicationIconBadgeNumber = UIApplication.sharedApplication().applicationIconBadgeNumber + 1
        
        UIApplication.sharedApplication().scheduleLocalNotification(localNotification)
    
    
    let notification = UILocalNotification()
    notification.fireDate = NSDate(timeIntervalSinceNow: 5)
    notification.alertBody = "Hey you! Yeah you! Swipe to unlock!"
    notification.alertAction = "be awesome!"
    notification.soundName = UILocalNotificationDefaultSoundName
    notification.userInfo = ["CustomField1": "w00t"]
    UIApplication.sharedApplication().scheduleLocalNotification(notification)
    
    }
    
    


}

