//
//  ViewController.swift
//  Noti Mania
//
//  Created by ramjan sayyad on 17/09/18.
//  Copyright © 2018 ramjan sayyad. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    @IBAction func action(_ sender: Any) {
        
        let content = UNMutableNotificationContent()
        content.title = "The 5 seconds are up!"
        content.subtitle = "They are up now"
        content.body = "The 5 seconds are really up!"
        content.badge = 1
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "timerDone", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request,withCompletionHandler: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound,.badge], completionHandler: { didAllow,error in
            
            
            
        })
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

