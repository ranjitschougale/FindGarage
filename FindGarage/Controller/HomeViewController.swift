//
//  HomeViewController.swift
//  FindGarage
//
//  Created by webwerks on 6/27/17.
//  Copyright © 2017 ranjits chougale. All rights reserved.
//

import UIKit
import SideMenuController

class HomeViewController: BaseViewController
{
        //MARK:- IBOutlet
        
        //MARK:- Variable Declaration
        
        //MARK:- ViewController Methods
        override func viewDidLoad()
        {
                super.viewDidLoad()
                
                // Do any additional setup after loading the view.
                sideMenuController?.delegate = self
        }
        override func viewWillAppear(_ animated: Bool)
        {
                super.viewWillAppear(animated)
                title =  "Home"
        }
        override func didReceiveMemoryWarning()
        {
                super.didReceiveMemoryWarning()
                // Dispose of any resources that can be recreated.
        }
        
        //MARK:- Button Actions
        @IBAction func buttonViewGarageListAction(_ sender: Any)
        {
                let vc = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "GarageListViewController") as! GarageListViewController
                navigationController?.pushViewController(vc, animated: true)
        }
}

//MARK:-
extension HomeViewController : SideMenuControllerDelegate
{
        func sideMenuControllerDidHide(_ sideMenuController: SideMenuController) {
                print(#function)
        }
        
        func sideMenuControllerDidReveal(_ sideMenuController: SideMenuController) {
                print(#function)
        }
}
