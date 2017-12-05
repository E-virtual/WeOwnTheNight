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
        btnLogin.setCrnrRadius(20.0)
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
        self.buildNavigationDrawer()
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        
////        let viewController = storyboard.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
//        
//        
//        let navigationController:UINavigationController = storyboard.instantiateInitialViewController() as! UINavigationController
//        let rootViewController:UIViewController = storyboard.instantiateViewController(withIdentifier: "TabBarViewController") as UIViewController
//        navigationController.viewControllers = [rootViewController]
// 
//        let appDelegate = UIApplication.shared.delegate as! AppDelegate
//        appDelegate.window!.rootViewController = navigationController
////        self.MOVE(vc: viewController, animated: true)
        
        
    }

    func buildNavigationDrawer()
    {
        var mainPage : UITabBarController!
        // Instantiate Main.storyboard
        let mainStoryBoard:UIStoryboard = UIStoryboard(name:"Main", bundle:nil)
        let leftSideMenu:UITableViewController!
        if(UserDefaults.standard.value(forKey: "selected") as! String == "user")
        {
        // Create View Controllers
         mainPage = mainStoryBoard.instantiateViewController(withIdentifier: "UserTabBarViewController") as! UserTabBarViewController
            leftSideMenu = mainStoryBoard.instantiateViewController(withIdentifier: "UserSideMenuTableViewController") as! UserSideMenuTableViewController

        }
        else
        {
            mainPage = mainStoryBoard.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
            leftSideMenu = mainStoryBoard.instantiateViewController(withIdentifier: "MyMenuTableViewController") as! MyMenuTableViewController


        }
        
    //    let rightSideMenu:RightSideViewController = mainStoryBoard.instantiateViewControllerWithIdentifier("RightSideViewController") as! RightSideViewController
        
        
        
        // Wrap into Navigation controllers
        let leftSideMenuNav = UINavigationController(rootViewController:leftSideMenu)
   //     let rightSideMenuNav = UINavigationController(rootViewController:rightSideMenu)
        let appDelegate = UIApplication.shared.delegate as! AppDelegate

        // Cerate MMDrawerController
        appDelegate.drawerContainer = MMDrawerController(center: mainPage, leftDrawerViewController: leftSideMenuNav, rightDrawerViewController: nil)
        
        appDelegate.drawerContainer!.openDrawerGestureModeMask = MMOpenDrawerGestureMode.panningCenterView
        appDelegate.drawerContainer!.closeDrawerGestureModeMask = MMCloseDrawerGestureMode.panningCenterView
        // Assign MMDrawerController to our window's root ViewController
        appDelegate.window?.rootViewController = appDelegate.drawerContainer
        
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
