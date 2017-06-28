//
//  BaseViewController.swift
//  FindGarage
//
//  Created by Sarika Chougale on 27/06/17.
//  Copyright © 2017 ranjits chougale. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController
{
        
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
        
        func addBackButtonOnNavigationBar()
        {
                let backButton:UIButton = UIButton()
                backButton.setImage(UIImage(named : "ic_back_white"), for: .normal)
                backButton.addTarget(self, action: #selector(popToRoot(sender:)), for: UIControlEvents.touchUpInside)
                backButton.sizeToFit()
                
                let backButtonItem:UIBarButtonItem = UIBarButtonItem(customView: backButton)
                self.navigationItem.leftBarButtonItem  = backButtonItem
        }
        
        func popToRoot(sender:UIBarButtonItem)
        {
                _ = self.navigationController?.popViewController(animated: true)
        }
}
