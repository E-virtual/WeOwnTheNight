//
//  ProfilePicUploadViewController.swift
//  WeOwnTheNight
//
//  Created by Ramandeep Singh on 03/11/17.
//  Copyright © 2017 Ramandeep Singh. All rights reserved.
//

import UIKit

class ProfilePicUploadViewController: UIViewController {

    @IBOutlet var btnProfile : UIButton!
    @IBOutlet var btnCamera : UIButton!
    @IBOutlet var btnGallery : UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setNavigationBar(title: "PROFILE PICTURE",leftButton: "back")
        self.navigationItem.leftBarButtonItem?.action = #selector(self.back)
        
        btnProfile.layer.setCrnrRadius(btnProfile.frame.size.width/2)
        btnCamera.layer.setCrnrRadius(20.0)
        btnGallery.layer.setCrnrRadius(20.0)

        // Do any additional setup after loading the view.
    }
    //MARK: - back to previous Screen
    @IBAction func back(_ sender: UIBarButtonItem) {
        self.BACK(animated: true)
    }
    
    @IBAction func skipClick(btn: UIButton)
    {
       self.buildNavigationDrawer()
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
