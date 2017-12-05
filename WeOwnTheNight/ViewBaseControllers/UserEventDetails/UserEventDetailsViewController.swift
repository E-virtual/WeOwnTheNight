//
//  UserEventDetailsViewController.swift
//  WeOwnTheNight
//
//  Created by Ramandeep Singh on 06/11/17.
//  Copyright © 2017 Ramandeep Singh. All rights reserved.
//

import UIKit

class UserEventDetailsViewController: UIViewController {

    @IBOutlet var viewPrice : UIView!
    @IBOutlet var viewMain : UIView!

    @IBOutlet var scrlMain : UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setNavigationBar(title: "EVENT DETAILS",leftButton: "back")
        self.navigationItem.leftBarButtonItem?.action = #selector(self.back)
        // Do any additional setup after loading the view.
        
        scrlMain.contentSize = CGSize(width: self.view.frame.size.width, height: 1000
        )
    }
    override func viewWillAppear(_ animated: Bool) {
        self.setTabBarVisible(visible: true, animated: false)
        
    }

    //MARK: - back to previous Screen
    @IBAction func back(_ sender: UIBarButtonItem) {
        self.BACK(animated: true)
    }

    @IBAction func bookTickets(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let viewController = storyboard.instantiateViewController(withIdentifier: "EventBookingOptionViewController") as! EventBookingOptionViewController
        
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
