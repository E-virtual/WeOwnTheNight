//
//  RegisterViewController.swift
//  WeOwnTheNight
//
//  Created by Ramandeep Singh on 02/11/17.
//  Copyright © 2017 Ramandeep Singh. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet var txtName : UITextField!
    @IBOutlet var txtEmail :  UITextField!
    @IBOutlet var txtPass : UITextField!
    @IBOutlet var txtConPass :  UITextField!
    @IBOutlet var txtPhone : UITextField!
    @IBOutlet var txtAdd :  UITextField!
    @IBOutlet var btnSignUp : UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
        self.setNavigationBar(title: "REGISTER",leftButton: "back")
        self.navigationItem.leftBarButtonItem?.action = #selector(self.backClick(btn:))

        // Do any additional setup after loading the view.
        if(UserDefaults.standard.value(forKey: "selected") as! String == "user")
        {
            txtName.placeholder = "Name"
            txtEmail.placeholder = "Email"

        }
        
        txtName.layer.setCrnrRadius(20.0)
        txtEmail.layer.setCrnrRadius(20.0)
        txtPass.layer.setCrnrRadius(20.0)
        txtConPass.layer.setCrnrRadius(20.0)
        txtPhone.layer.setCrnrRadius(20.0)
        txtAdd.layer.setCrnrRadius(20.0)

        btnSignUp.setCrnrRadius(20.0)
        
        txtName.setLeftPaddingPoints(20.0)
        txtEmail.setLeftPaddingPoints(20.0)
        txtPass.setLeftPaddingPoints(20.0)
        txtConPass.setLeftPaddingPoints(20.0)
        txtPhone.setLeftPaddingPoints(20.0)
        txtAdd.setLeftPaddingPoints(20.0)
     
        
        
    }
    
    //MARK: - back to dashboard
    @IBAction func registerClick(btn: UIButton)
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let viewController = storyboard.instantiateViewController(withIdentifier: "ProfilePicUploadViewController") as! ProfilePicUploadViewController
        
        self.MOVE(vc: viewController, animated: true)    }
    
    //MARK: - back to dashboard
    @IBAction func backClick(btn: UIButton)
    {
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
