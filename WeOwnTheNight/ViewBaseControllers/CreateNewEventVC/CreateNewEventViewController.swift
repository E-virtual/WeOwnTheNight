//
//  CreateNewEventViewController.swift
//  WeOwnTheNight
//
//  Created by Ramandeep Singh on 03/11/17.
//  Copyright © 2017 Ramandeep Singh. All rights reserved.
//

import UIKit

class CreateNewEventViewController: UIViewController {
    @IBOutlet var txtSelCat: UITextField!
    @IBOutlet var txtEventName: UITextField!
    @IBOutlet var txtDetails: UITextField!
    @IBOutlet var txtLocation: UITextField!
    @IBOutlet var txtStart: UITextField!
    @IBOutlet var txtEnd: UITextField!
    @IBOutlet var txtPrice: UITextField!
    @IBOutlet var txtSeats: UITextField!
    @IBOutlet var txtDress: UITextField!
    @IBOutlet var txtMessage: UITextView!
    @IBOutlet var btnPublish: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        self.setNavigationBar(title: "CREATE NEW EVENT",leftButton: "back")
        // Do any additional setup after loading the view.
        self.navigationItem.leftBarButtonItem?.action = #selector(self.back)
        // Do any additional setup after loading the view.
        
        
        txtSelCat.layer.setCrnrRadius(20.0)
        txtEventName.layer.setCrnrRadius(20.0)
        txtDetails.layer.setCrnrRadius(20.0)
        txtLocation.layer.setCrnrRadius(20.0)
        txtStart.layer.setCrnrRadius(20.0)
        txtEnd.layer.setCrnrRadius(20.0)
        txtPrice.layer.setCrnrRadius(20.0)
        txtSeats.layer.setCrnrRadius(20.0)
        txtDress.layer.setCrnrRadius(20.0)
        txtMessage.layer.setCrnrRadius(20.0)

        btnPublish.setCrnrRadius(20.0)
        
        
        txtSelCat.setLeftPaddingPoints(20.0)
        txtEventName.setLeftPaddingPoints(20.0)
        txtDetails.setLeftPaddingPoints(20.0)
        txtLocation.setLeftPaddingPoints(20.0)
        txtStart.setLeftPaddingPoints(20.0)
        txtEnd.setLeftPaddingPoints(20.0)
        txtPrice.setLeftPaddingPoints(20.0)
        txtSeats.setLeftPaddingPoints(20.0)
        txtDress.setLeftPaddingPoints(20.0)

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
