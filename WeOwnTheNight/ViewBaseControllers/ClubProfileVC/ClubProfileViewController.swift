//
//  ClubProfileViewController.swift
//  WeOwnTheNight
//
//  Created by Ramandeep Singh on 07/11/17.
//  Copyright © 2017 Ramandeep Singh. All rights reserved.
//

import UIKit

class ClubProfileViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    override var prefersStatusBarHidden: Bool {
        return false
    }
    override func viewDidLoad() {
        

        
        super.viewDidLoad()
        self.setNavigationBar(title: "CLUB PROFILE",leftButton: "back")
        
        self.navigationItem.leftBarButtonItem?.action = #selector(self.back)
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
//        self.setTabBarVisible(visible: true, animated: false)

    }
    
    //MARK: - back to previous Screen
    @IBAction func back(_ sender: UIBarButtonItem) {
        self.BACK(animated: true)
    }
    
    @IBAction func sendMessage(_ sender: UIButton) {
            
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    
    let viewController = storyboard.instantiateViewController(withIdentifier: "SendMessageViewController") as! SendMessageViewController
    
    self.MOVE(vc: viewController, animated: true)
            
    }

    //MARK: - Collection View Delegate
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
        
        let viewController = storyboard.instantiateViewController(withIdentifier: "UserEventDetailsViewController") as! UserEventDetailsViewController
        
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
