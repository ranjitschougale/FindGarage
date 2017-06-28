//
//  MenuViewController.swift
//  FindGarage
//
//  Created by webwerks on 6/27/17.
//  Copyright © 2017 ranjits chougale. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController
{
        //MARK:- IBOutlet
        @IBOutlet weak var tableView: UITableView!
        
        //MARK:- Variable Declaration
        let segues = ["showCenterController1", "showCenterController2", "showCenterController3","showCenterController4","showCenterController5","showCenterController6","showCenterController7"]
        let arrayMenuName: [String] = ["Home","Profile","Search By Brand","Booking History","Terms & Condition","Contact Us","About Us","Logout"]
        let arrayMenuImages: [String] = ["HomeImage","ProfileImage","SearchByBrandImage","BookingHistoryImage","TermsAndConditionImage","ContactUsImage","AboutUsImage","LogoutImage"]
        
        var previousIndex: NSIndexPath?
        
        //MARK:- ViewController Methods
        override func viewDidLoad()
        {
                super.viewDidLoad()
                // Do any additional setup after loading the view.
                
        }
        
        override func didReceiveMemoryWarning()
        {
                super.didReceiveMemoryWarning()
                // Dispose of any resources that can be recreated.
        }
}

//MARK:-
extension MenuViewController : UITableViewDelegate, UITableViewDataSource
{
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        {
                return arrayMenuName.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
        {
                let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
                cell.textLabel?.text = arrayMenuName[indexPath.row]
                cell.imageView?.image = UIImage.init(named: arrayMenuImages[indexPath.row])
                cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 16)
                return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
        {
                let cell = tableView.cellForRow(at: indexPath)
                cell?.textLabel?.textColor = Constants.APP_CONSTANTS.k_APP_COLOR
                if let index = previousIndex
                {
                        tableView.deselectRow(at: index as IndexPath, animated: true)
                }
                if indexPath.row != 7
                {
                        sideMenuController?.performSegue(withIdentifier: segues[indexPath.row], sender: nil)
                        previousIndex = indexPath as NSIndexPath?
                }
                else
                {
                        print("Logout clicked")
                        let alert = UIAlertController(title: Constants.APPKEYS.k_APP_NAME , message: "Are you sure you want to Logout?", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action) in
                                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                                appDelegate.showLoginViewController()
                        }))
                    
                    alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) in
                        
                    }))
                        present(alert, animated: true, completion: nil)
                }
        }
        
        func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath)
        {
                let cell = tableView.cellForRow(at: indexPath)
                cell?.textLabel?.textColor = .black
        }
}
