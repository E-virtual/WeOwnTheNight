//
//  LoginViewController.swift
//  WeOwnTheNight
//
//  Created by Ramandeep Singh on 02/11/17.
//  Copyright © 2017 Ramandeep Singh. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var txtUserName : UITextField!
    @IBOutlet var txtPass :  UITextField!
    @IBOutlet var btnLogin : UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        txtUserName.layer.setCrnrRadius(20.0)
        txtPass.layer.setCrnrRadius(20.0)
        btnLogin.layer.setCrnrRadius(20.0)
        txtUserName.setLeftPaddingPoints(20)
        txtPass.setLeftPaddingPoints(20)
        
    }
    override func viewWillAppear(_ animated: Bool){
        self.navigationController?.isNavigationBarHidden = true

        
    }
    // MARK:- SignUp Clicked
    @IBAction func SignUp(_ btn: UIButton)
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let viewController = storyboard.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        
        self.MOVE(vc: viewController, animated: true)
  
        
    }
    
    // MARK:- Login Clicked
    @IBAction func Login(_ btn: UIButton)
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let viewController = storyboard.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        
        self.MOVE(vc: viewController, animated: true)
        
        
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
