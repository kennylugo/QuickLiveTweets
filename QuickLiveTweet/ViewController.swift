//
//  ViewController.swift
//  QuickLiveTweet
//
//  Created by Kenny Batista on 11/11/15.
//  Copyright © 2015 Kenny Batista. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {

    @IBAction func tweetAction(sender: AnyObject) {
        
        
        //        let score = 35; variable for initial text on twitter sheet.
        
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter) {
            
            let tweetController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            
            //            tweetController.setInitialText("I Scored \(score) On this app") initial text sheet
            
            self.presentViewController(tweetController, animated: true, completion: nil)
        }
            
            
            //        If not logged into Twitter
        else {
            
            let alert = UIAlertController(title: "Account", message: "Please log into your Twitter", preferredStyle: UIAlertControllerStyle.Alert)
            
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
            alert.addAction(UIAlertAction(title: "Settings", style: UIAlertActionStyle.Default, handler: {
                (UIAlertAction) in
                
                let settingsURL = NSURL(string: UIApplicationOpenSettingsURLString)
                
                if let url = settingsURL {
                    UIApplication.sharedApplication().openURL(url)
                }
            }))
            
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

