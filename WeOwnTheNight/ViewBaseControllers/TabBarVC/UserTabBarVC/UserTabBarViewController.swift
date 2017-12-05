//
//  UserTabBarViewController.swift
//  WeOwnTheNight
//
//  Created by Ramandeep Singh on 03/11/17.
//  Copyright © 2017 Ramandeep Singh. All rights reserved.
//

import UIKit

class UserTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true

        for item in self.tabBar.items!{
            item.selectedImage = item.selectedImage?.withRenderingMode(.alwaysOriginal)
            
            item.image = item.image?.withRenderingMode(.alwaysOriginal)
            item.title = ""
            
            self.tabBar.isTranslucent = false
            
            
        }
        
        // Do any additional setup after loading the view.
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
