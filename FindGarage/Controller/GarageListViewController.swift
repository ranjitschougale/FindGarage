//
//  GarageListViewController.swift
//  FindGarage
//
//  Created by webwerks on 6/28/17.
//  Copyright © 2017 ranjits chougale. All rights reserved.
//

import UIKit

class GarageListViewController: GarageBaseViewController
{
        //MARK:- IBOutlet
        
        //MARK:- Variable Declaration
        
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
        
        override func viewWillAppear(_ animated: Bool)
        {
                super.viewWillAppear(animated)
                title =  "Garage List"
                addBackButtonOnNavigationBar()
        }
}
