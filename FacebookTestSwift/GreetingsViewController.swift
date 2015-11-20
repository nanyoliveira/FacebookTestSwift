//
//  GreetingsViewController.swift
//  FacebookTestSwift
//
//  Created by SBTUR Principal on 11/20/15.
//  Copyright © 2015 Ariane. All rights reserved.
//

import UIKit

class GreetingsViewController: UIViewController {
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        @IBOutlet weak var greetingsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        /* Facebook Name Implementation */
        let parameters = ["fields": "id, name, email"]
        let graphRequest : FBSDKGraphRequest = FBSDKGraphRequest(graphPath: "me", parameters: parameters)
        graphRequest.startWithCompletionHandler({ (connection, result, error) -> Void in
            
            if ((error) != nil)
            {
                // Process error
                print("Error: \(error)")
            }
            else
            {
                print("fetched user: \(result)")
                let userName : NSString = result.valueForKey("name") as! NSString
                print("User Name is: \(userName)")
                 self.greetingsLabel.text = "Hi \(userName) ! Thanks for log in!"
            }
        })
    }

}
