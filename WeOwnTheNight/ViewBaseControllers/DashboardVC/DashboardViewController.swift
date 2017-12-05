//
//  DashboardViewController.swift
//  WeOwnTheNight
//
//  Created by Ramandeep Singh on 02/11/17.
//  Copyright © 2017 Ramandeep Singh. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.sideMenuController()?.sideMenu?.delegate = self

        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named:"top_bar"), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.isTranslucent = false

          self.setNavigationBar(title: "DASHBOARD",leftButton: "nav")
        
        self.navigationItem.leftBarButtonItem?.action = #selector(self.toggleSideMenuBtn)

        // Do any additional setup after loading the view.
    }

    @IBAction func createNewEvent()
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let viewController = storyboard.instantiateViewController(withIdentifier: "CreateNewEventViewController") as! CreateNewEventViewController
        
        self.MOVE(vc: viewController, animated: true)
    }
    @IBAction func EventBooking()
    {
        self.tabBarController?.selectedIndex = 2
    }
    //MARK: - side menu open and close
    @IBAction func toggleSideMenuBtn(_ sender: UIBarButtonItem) {
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        
        appDelegate.drawerContainer!.toggle(MMDrawerSide.left, animated: true, completion: nil)
        
    }
    
    //MARK: - Table View Delegate
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5;
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        return cell

    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let viewController = storyboard.instantiateViewController(withIdentifier: "EventDetailViewController") as! EventDetailViewController
        
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
