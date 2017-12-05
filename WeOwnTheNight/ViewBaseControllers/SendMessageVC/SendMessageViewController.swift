//
//  SendMessageViewController.swift
//  WeOwnTheNight
//
//  Created by Ramandeep Singh on 07/11/17.
//  Copyright © 2017 Ramandeep Singh. All rights reserved.
//

import UIKit

class SendMessageViewController: UIViewController {
    @IBOutlet var txtSubject : UITextField!
    @IBOutlet var txtMessage :  UITextView!
    @IBOutlet var btnSend : UIButton!
    
    override var prefersStatusBarHidden: Bool {
        return true
    }    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.setTabBarVisible(visible: false, animated: false)

        self.navigationController?.isNavigationBarHidden = true
        
        txtSubject.layer.setCrnrRadius(20.0)
        txtMessage.layer.setCrnrRadius(20.0)
        btnSend.setCrnrRadius(20.0)
        txtSubject.setLeftPaddingPoints(20)

        
        // Do any additional setup after loading the view.
    }
    //MARK: - back to previous Screen
    @IBAction func back(_ sender: UIBarButtonItem) {
        self.BACK(animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
