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
            
            myAlertDialog("มีช่องว่าง", strMessage: "กรุณากรองช่องว่าง")
            
            
            
        }else{
            var trueUser = ["test1","test2","test3"]
            var truePass = ["123","456","789"]
            var index = 0
            var status = false
            var myTruePass = ""
            
            
            
            
            for myfor in trueUser {
                if (strUser == myfor) {
                    status = true
                    myTruePass = truePass[index]
                    
                }//if
                
                index += 1
                
            }//for
            if status {
                if (strPass == myTruePass) {
                    print("Welcome")
                    
//                    let goToService = self.storyboard?.instantiateViewControllerWithIdentifier("serviceID") as! ServiceViewController
//                    self.navigationController?.pushViewController(goToService, animated: true)
                    
                    
                    
                    
                }else{
                    myAlertDialog("Password False", strMessage: "Please Try Again Passoword Falae")
                
                
                
                }
                
                
                
                
            }else{
            
            myAlertDialog("ไม่มี User นี้", strMessage: "ไม่มี User นี้ในฐานข้อมูลของเรา ")
            
            
            
            }
           
            
            
            
            
        
        }//if
        
        
        
    }//checkSpace
    
    func  myAlertDialog(strTit:String, strMessage:String) -> Void {
        
         //Alert Dialog

        
            let myAlert = UIAlertController(title: strTit, message: strMessage,preferredStyle: UIAlertControllerStyle.Alert)
            myAlert.addAction(UIAlertAction(title:"OK", style: UIAlertActionStyle.Default,handler:nil))
            self.presentViewController(myAlert, animated: true, completion: nil)
        
        
    }
    
    
    
}//class

