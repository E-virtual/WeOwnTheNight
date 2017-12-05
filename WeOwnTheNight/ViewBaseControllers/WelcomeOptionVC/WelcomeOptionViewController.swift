//
//  WelcomeOptionViewController.swift
//  WeOwnTheNight
//
//  Created by Ramandeep Singh on 02/11/17.
//  Copyright © 2017 Ramandeep Singh. All rights reserved.
//

import UIKit

class WelcomeOptionViewController: UIViewController {

    @IBOutlet var btnUser : UIButton!
    @IBOutlet var btnClub : UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        btnUser.setCrnrRadius(20.0)
        btnClub.setCrnrRadius(20.0)
     
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named:"top_bar"), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.isTranslucent = false
        self.setNavigationBar(title: "WELCOME",leftButton: "")

        // Do any additional setup after loading the view.
    }

    // MARK:- Club Clicked
    @IBAction func UserClicked(_ btn: UIButton)
    {
        UserDefaults.standard.set("user", forKey: "selected")
        self.login()

    }
    // MARK:- Club Clicked
    @IBAction func clubClicked(_ btn: UIButton)
    {
        UserDefaults.standard.set("club", forKey: "selected")

      self.login()
    }
    func login()
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let viewController = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        
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
