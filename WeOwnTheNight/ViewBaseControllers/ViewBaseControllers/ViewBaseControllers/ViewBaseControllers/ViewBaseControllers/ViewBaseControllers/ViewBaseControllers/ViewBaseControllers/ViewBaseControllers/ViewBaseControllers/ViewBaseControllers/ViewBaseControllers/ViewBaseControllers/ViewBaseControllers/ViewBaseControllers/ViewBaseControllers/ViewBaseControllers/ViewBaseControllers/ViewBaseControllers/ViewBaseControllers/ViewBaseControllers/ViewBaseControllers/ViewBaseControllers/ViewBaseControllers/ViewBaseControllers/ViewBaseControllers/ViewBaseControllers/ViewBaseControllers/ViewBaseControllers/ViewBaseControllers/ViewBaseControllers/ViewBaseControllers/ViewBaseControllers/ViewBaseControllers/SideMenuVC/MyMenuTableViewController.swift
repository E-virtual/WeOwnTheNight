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
    var selectedMenuItem : Int = 1
    var arrList : NSArray! = ["Welcome!","Dashboard","Events Calculator","RSS Feeds","Notes","Help" ]
    var arrBottom : NSArray! = ["fb","twitter","insta","pinterest","youtube"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Customize apperance of table view
        tableView.contentInset = UIEdgeInsetsMake(64.0, 0, 0, 0) //
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor.black
        tableView.scrollsToTop = false
        
        
        // Preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false
        
        tableView.selectRow(at: IndexPath(row: selectedMenuItem, section: 0), animated: false, scrollPosition: .middle)
        
        var xVal = 10
        for var i in 0..<arrBottom.count {
        let bottomButton = UIButton(frame: CGRect(x: xVal, y: Int(self.view.frame.size.height-80), width: 20, height: 20))
            bottomButton.tag = i
            bottomButton.setImage(UIImage(named:(arrBottom[i] as? String)!), for: .normal)
        bottomButton.titleLabel?.textColor = UIColor.white
            bottomButton.addTarget(self, action: #selector(self.socialClick(_:)), for: UIControlEvents.touchUpInside)
        view.addSubview(bottomButton)
            xVal += 30
        }
        
        
    }
    func socialClick(_ btn:UIButton!)
    {
        
        var urlString: String
        
        switch (btn.tag) {
        case 0:
            urlString = "http://www.facebook.com"
            break
        case 1:
            urlString = "http://www.twitter.com"
            break
        case 2:
            urlString = "http://www.instagram.com"

            break
        case 3:
            urlString = "http://www.pinterest.com"

            break
        case 4:
            urlString = "http://www.youtube.com"

            break
        default:
            urlString = "http://www.facebook.com"
            break
        }
        
        let url : URL = URL(string:String(format : "%@",urlString))!
//        let vc = SFSafariViewController(url: url)
//        present(vc, animated: true, completion: nil)
        UIApplication.shared.open(url)

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
            cell!.textLabel?.textColor = UIColor.white
            cell?.textLabel?.font = UIFont(name: "Montserrat-Regular", size: 14)
            let selectedBackgroundView = UIView(frame: CGRect(x: 0, y: 0, width: cell!.frame.size.width, height: cell!.frame.size.height))
            selectedBackgroundView.backgroundColor = UIColor(red: 237/255, green: 57/255, blue: 82/255, alpha: 1.0)
            cell!.selectedBackgroundView = selectedBackgroundView
            
            
        }
        if(indexPath.row == 0)
        {
            cell?.textLabel?.textAlignment = NSTextAlignment.center
        }
        cell!.textLabel?.text = arrList[indexPath.row] as? String
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("did select row: \(indexPath.row)")
        
        if (indexPath.row == selectedMenuItem) {
            return
        }
        
        selectedMenuItem = indexPath.row
        
        //Present new view controller
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main",bundle: nil)
        var destViewController : UIViewController
        switch (indexPath.row) {
        case 1:
            destViewController = mainStoryboard.instantiateViewController(withIdentifier: "DashboardViewController")
            break
        case 2:
            destViewController = mainStoryboard.instantiateViewController(withIdentifier: "DashboardViewController")
            break
        case 3:
            destViewController = mainStoryboard.instantiateViewController(withIdentifier: "RssFeedsViewController")
            break
        case 4:
            destViewController = mainStoryboard.instantiateViewController(withIdentifier: "NotesListViewController")
            break
        case 5:
            destViewController = mainStoryboard.instantiateViewController(withIdentifier: "HelpViewController")
            break
        default:
            destViewController = mainStoryboard.instantiateViewController(withIdentifier: "ViewController4")
            break
        }
        sideMenuController()?.setContentViewController(destViewController)
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
