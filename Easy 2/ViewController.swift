//
//  ViewController.swift
//  Easy 2
//
//  Created by iMac_13 on 6/23/2559 BE.
//  Copyright © 2559 iMac_13. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginButton(sender: AnyObject) {
        
        let user = userTextField.text
        let password = passwordTextField.text
        
        print("user ==> \(user)")
        print("password ==>\(password)")
        checkSpace(user!, strPass: password!)
    }//login Button
    
    func checkSpace(strUser:String, strPass:String) -> Void
    {
    
        if ((strUser.isEmpty) || (strPass.isEmpty)) {
            print("Have Space")
            
            //Alert Dialog
            
            let myAlert = UIAlertController(title: "มีช่องว่าง",message: "กรุณากรอกทุกช่องค่ะ",preferredStyle: UIAlertControllerStyle.Alert)
            myAlert.addAction(UIAlertAction(title:"OK",style: UIAlertActionStyle.Default,handler:nil))
            self.presentViewController(myAlert, animated: true, completion: nil)
            
        }
        
    }
}//class

