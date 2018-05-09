//
//  LoginViewController.swift
//  RateMyCampus
//
//  Created by Tavien on 5/9/18.
//  Copyright © 2018 Warpedflo. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController
{

    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
   // var AlertPop:UIAlertController
    var alertError = " "
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func OnSignIn(_ sender: Any)
    {
        let username = usernameField.text ?? ""
        let password = passwordField.text ?? ""
        
        PFUser.logInWithUsername(inBackground: username, password: password) { (user: PFUser?, error: Error?) in
            if let error = error {
                print("User log in failed: \(error.localizedDescription)")
                self.alertError = error.localizedDescription
            } else {
                print("User logged in successfully")
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            }
        }
    }
   /* func alertme()
    {
        
        self.AlertPop = UIAlertController(title: "Login Error :(", message: self.alertError,preferredStyle: .alert)
        
        if (usernameField.text?.isEmpty)! || (passwordField.text != nil)
        {
            let OKAction = UIAlertAction(title: "OK", style: .default)
            { (action) in
                // handle response here.
            }
            // add the OK action to the alert controller
            self.AlertPop.addAction(OKAction)
            present(AlertPop, animated: true)
        }
    }*/
    
    @IBAction func OnSignUp(_ sender: Any)
    {
        let newUser = PFUser()
        
        // set user properties
        newUser.username = usernameField.text
        newUser.password = passwordField.text
        print("Account created")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
