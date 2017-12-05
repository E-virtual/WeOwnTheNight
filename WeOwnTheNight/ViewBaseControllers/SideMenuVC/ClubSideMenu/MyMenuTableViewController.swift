//
//  MyMenuTableViewController.swift
//  SwiftSideMenu
//
//  Created by Evgeny Nazarov on 29.09.14.
//  Copyright (c) 2014 Evgeny Nazarov. All rights reserved.
//

import UIKit
import SafariServices

class MyMenuTableViewController: UITableViewController {
    var arrList : NSArray! = ["poster.png","menu","setting","navicalender","navinote" ]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named:"top_bar"), for: UIBarMetrics.default)

        // Customize apperance of table view
        tableView.contentInset = UIEdgeInsetsMake(0, 0, 0, 0) //
     //   tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor.black
        tableView.scrollsToTop = false
         tableView.tableFooterView = UIView()
        
        // Preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false
        
        let bottomButton = UIButton(frame: CGRect(x: 25, y: Int(self.view.frame.size.height-100), width: 24, height: 24))
        bottomButton.setImage(UIImage(named:"logout"), for: .normal)
        bottomButton.titleLabel?.textColor = UIColor.white
        bottomButton.addTarget(self, action: #selector(self.logoutClick(_:)), for: UIControlEvents.touchUpInside)
        view.addSubview(bottomButton)
        
        
    }
    
     @IBAction func logoutClick(_ sender: UIButton) {
        
        let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigationController:UINavigationController = storyboard.instantiateInitialViewController() as! UINavigationController
        let rootViewController:UIViewController = storyboard.instantiateViewController(withIdentifier: "WelcomeOptionViewController") as UIViewController
        navigationController.viewControllers = [rootViewController]
        let appDelegate = UIApplication.shared.delegate as! AppDelegate

        appDelegate.window?.rootViewController = navigationController

    }
    
       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // Return the number of sections.
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return arrList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "CELL")
        
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "CELL")
            cell!.backgroundColor = UIColor.clear
    //        cell!.textLabel?.textColor = UIColor.white
     //       cell?.textLabel?.font = UIFont(name: "Montserrat-Regular", size: 14)
            let cellImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 80, height: 80))
            cellImage.image = UIImage(named:(arrList[indexPath.row] as? String)!)
            cell?.addSubview(cellImage)
            if(indexPath.row != 0)
            {
            cellImage.frame = CGRect(x: 28, y: 28, width: 24, height: 24)
            }
           
        }

   //     cell!.textLabel?.text = arrList[indexPath.row] as? String
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("did select row: \(indexPath.row)")
        
//        if (indexPath.row == selectedMenuItem) {
//            return
//        }
        
        
        //Present new view controller
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        var destViewController : UIViewController
        switch (indexPath.row) {
        case 0:
            destViewController = mainStoryboard.instantiateViewController(withIdentifier: "TabBarViewController")
             self.tabBarController?.selectedIndex = 3
            break
        case 1:
            destViewController = mainStoryboard.instantiateViewController(withIdentifier: "TabBarViewController")
            self.tabBarController?.selectedIndex = 3
            break
        case 2:
            destViewController = mainStoryboard.instantiateViewController(withIdentifier: "TabBarViewController")
            self.tabBarController?.selectedIndex = 3
            break
        case 3:
            destViewController = mainStoryboard.instantiateViewController(withIdentifier: "TabBarViewController")
            self.tabBarController?.selectedIndex = 2
            break
        case 4:
            destViewController = mainStoryboard.instantiateViewController(withIdentifier: "HelpViewController") as! HelpViewController
            break
        default:
            destViewController = mainStoryboard.instantiateViewController(withIdentifier: "TabBarViewController")
            self.tabBarController?.selectedIndex = 3
            break
        }
        let nav = UINavigationController(rootViewController:destViewController)

        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.drawerContainer!.centerViewController = nav
        appDelegate.drawerContainer!.toggle(MMDrawerSide.left, animated: true, completion: nil)
    
    
        
        
        
    }
    
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
     // Get the new view controller using [segue destinationViewController].
     // Pass the selected object to the new view controller.
     }
     */
    
}
