//
//  TermsAndConditionViewController.swift
//  FindGarage
//
//  Created by webwerks on 6/27/17.
//  Copyright © 2017 ranjits chougale. All rights reserved.
//

import UIKit

class TermsAndConditionViewController: BaseViewController
{
        //MARK:- IBOutlet
        
        //MARK:- Variable Declaration
        
        //MARK:- ViewController Methods
        override func viewDidLoad()
        {
                super.viewDidLoad()
                
                // Do any additional setup after loading the view.
                self.title = "Terms And Condition"

        }
        
        override func didReceiveMemoryWarning()
        {
                super.didReceiveMemoryWarning()
                // Dispose of any resources that can be recreated.
        }
}

//MARK:-
//extension TermsAndConditionViewController : SideMenuControllerDelegate
//{
//        func sideMenuControllerDidHide(_ sideMenuController: SideMenuController) {
//                print(#function)
//        }
//        
//        func sideMenuControllerDidReveal(_ sideMenuController: SideMenuController) {
//                print(#function)
//        }
//}
