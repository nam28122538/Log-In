//
//  ServiceViewController.swift
//  Easy 2
//
//  Created by iMac_13 on 6/23/2559 BE.
//  Copyright © 2559 iMac_13. All rights reserved.
//

import UIKit

class ServiceViewController: UIViewController {

    @IBOutlet weak var ishiharaImageView: UIImageView!
    
    
    
    @IBOutlet weak var answerTextField: UITextField!
    var myIndex = 0
    var score = 0
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }//didReceive
    
    @IBAction func answerButton(sender: AnyObject) {
        
        let strAnswer = answerTextField.text
        print("strAnswer ==> \(strAnswer)")
        
        var myImage=["ishihara_01.phg","ishihara_02.phg","ishihara_03.phg","ishihara_04.phg",
                     "ishihara_05.phg","ishihara_06.phg","ishihara_07.phg","ishihara_08.phg","ishihara_09.phg","ishihara_10.phg"]
        var myTrueAnawer = [3,5,6,12,29,45,74,42,0,0]
        if (myIndex < 9 ) {
            myIndex += 1
        } else{
            myIndex = 0
        }
        let intAnawer = Int(strAnswer!)
        print("intAnser ==>(intAnswer)")
        if (intAnawer == myTrueAnawer[myIndex]) {
            score += 1
            print("Score ==> \(score)")
        }
        
        ishiharaImageView.image = UIImage(named: myImage[myIndex])
        

        
        
        
        
        
    }//answerButton

    
    
    
}//mainclass
