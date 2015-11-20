//
//  ViewController.swift
//  FacebookTestSwift
//
//  Created by SBTUR Principal on 11/20/15.
//  Copyright © 2015 Ariane. All rights reserved.
//

import UIKit

class ViewController: UIViewController, FBSDKLoginButtonDelegate {

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        /* Facebook Login Implementation */
        let loginButton:FBSDKLoginButton =  FBSDKLoginButton()
        loginButton.readPermissions =  ["public_profile", "email", "user_friends"];
        loginButton.center = self.view.center
        loginButton.delegate = self
        self.view.addSubview(loginButton)
    }
    
    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!)
    {
        print("error \(error)")
        if (result != nil) {
            performSegueWithIdentifier("Greeting View", sender: self)
        }
    }
    
    
    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!)
    {
        print("user logged out")
    }


}

