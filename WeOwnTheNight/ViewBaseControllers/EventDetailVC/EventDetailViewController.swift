//
//  EventDetailViewController.swift
//  WeOwnTheNight
//
//  Created by Ramandeep Singh on 03/11/17.
//  Copyright © 2017 Ramandeep Singh. All rights reserved.
//

import UIKit

class EventDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     //   self.tabBarController?.tabBar.isHidden = true
        
//        self.setTabBarVisible(visible: false, animated: false)

        self.setNavigationBar(title: "EVENT DETAILS",leftButton: "back")
        // Do any additional setup after loading the view.
        self.navigationItem.leftBarButtonItem?.action = #selector(self.back)
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
