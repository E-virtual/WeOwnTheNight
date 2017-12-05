//
//  SearchEventViewController.swift
//  WeOwnTheNight
//
//  Created by Ramandeep Singh on 07/11/17.
//  Copyright © 2017 Ramandeep Singh. All rights reserved.
//

import UIKit

class SearchEventViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var txtSearch : UITextField!
    @IBOutlet var txtLocation : UITextField!
    @IBOutlet var tblRecent : UITableView!
    @IBOutlet var tblRecomended : UITableView!
    private var finishedLoadingInitialTableCells = false

    var arrRecent : NSMutableArray! = ["Artic Monkeys","Burning Man","Lollapalooza"]

    override func viewDidLoad() {
       tblRecent.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named:"top_bar"), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.isTranslucent = false
        self.setNavigationBar(title: "SEARCH",leftButton: "nav")
        self.navigationItem.leftBarButtonItem?.action = #selector(self.back)
        
        Alert.textFieldDesignWithLeftPadding(textField: txtSearch, placeHonderName: "Search Events", placeHolderColor: UIColor.lightGray, padding: 20, image: UIImage(named:"search-2")!)
        
        txtSearch.addBottomBorderWithColor(color: UIColor.black, width: 0.5
        )
        
        Alert.textFieldDesignWithLeftPadding(textField: txtLocation, placeHonderName: "San Francisco, CA", placeHolderColor: UIColor.lightGray, padding: 20, image: UIImage(named:"locationmark")!)
        
        txtLocation.addBottomBorderWithColor(color: UIColor.black, width: 0.5
        )
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: UIBarButtonItem) {
        
        self.BACK_TO_ROOT(animated: true)
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(tableView == tblRecent)
        {
            return arrRecent.count
        }
        else
        {
        return 10
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if(tableView == tblRecent)
        {
            cell.textLabel?.text = arrRecent[indexPath.row] as! String
            cell.textLabel?.font = UIFont.systemFont(ofSize: 13.0)
            
        }
        return cell
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        var lastInitialDisplayableCell = false
        
        //change flag as soon as last displayable cell is being loaded (which will mean table has initially loaded)
        if 10 > 0 && !finishedLoadingInitialTableCells {
            if let indexPathsForVisibleRows = tableView.indexPathsForVisibleRows,
                let lastIndexPath = indexPathsForVisibleRows.last, lastIndexPath.row == indexPath.row {
                lastInitialDisplayableCell = true
            }
        }
        
        if !finishedLoadingInitialTableCells {
            
            if lastInitialDisplayableCell {
                
                finishedLoadingInitialTableCells = true
            }
            
            //animates the cell as it is being displayed for the first time
            cell.transform = CGAffineTransform(translationX: 0, y: 40)
            cell.alpha = 0
            
            UIView.animate(withDuration: 0.5, delay: 0.05*Double(indexPath.row), options: [.curveEaseInOut], animations: {
                cell.transform = CGAffineTransform(translationX: 0, y: 0)
                cell.alpha = 1
            }, completion: nil)
        }
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
