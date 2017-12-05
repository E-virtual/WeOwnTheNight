//
//  EventsByCalendarViewController.swift
//  WeOwnTheNight
//
//  Created by Ramandeep Singh on 06/11/17.
//  Copyright © 2017 Ramandeep Singh. All rights reserved.
//

import UIKit
import FSCalendar

class EventsByCalendarViewController: UIViewController, FSCalendarDataSource, FSCalendarDelegate, UICollectionViewDelegate, UICollectionViewDataSource  {
    @IBOutlet var lblDate : UILabel!
    
    fileprivate let formatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM dd,yyyy"
        return formatter
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        lblDate.text = self.formatter.string(from: Date())
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named:"top_bar"), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.isTranslucent = false
        
        self.setNavigationBar(title: "CALENDAR",leftButton: "nav")
        // Do any additional setup after loading the view.
        self.navigationItem.leftBarButtonItem?.action = #selector(self.toggleSideMenuBtn)
    
    }
    
    //MARK: - side menu open and close
    @IBAction func toggleSideMenuBtn(_ sender: UIBarButtonItem) {
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        
        appDelegate.drawerContainer!.toggle(MMDrawerSide.left, animated: true, completion: nil)
        
    }
    
    // MARK:- FSCalendarDelegate
    
    func calendarCurrentPageDidChange(_ calendar: FSCalendar) {
        print("change page to \(self.formatter.string(from: calendar.currentPage))")
    }
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        print("calendar did select date \(self.formatter.string(from: date))")
        lblDate.text = self.formatter.string(from: date)
        if monthPosition == .previous || monthPosition == .next {
            calendar.setCurrentPage(date, animated: true)
        }
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
