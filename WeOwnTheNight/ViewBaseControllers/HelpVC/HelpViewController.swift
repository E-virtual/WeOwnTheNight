//
//  HelpViewController.swift
//  WeOwnTheNight
//
//  Created by Ramandeep Singh on 03/11/17.
//  Copyright © 2017 Ramandeep Singh. All rights reserved.
//

import UIKit

class HelpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named:"top_bar"), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.isTranslucent = false
        
        self.setNavigationBar(title: "HELP",leftButton: "nav")
        self.navigationItem.leftBarButtonItem?.action = #selector(self.back)

        
        // Do any additional setup after loading the view.
    }
    @IBAction func back(_ sender: UIBarButtonItem) {

        self.BACK_TO_ROOT(animated: true)
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
