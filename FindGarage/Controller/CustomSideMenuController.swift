//
//  CustomSideMenuController.swift
//  FindGarage
//
//  Created by webwerks on 6/27/17.
//  Copyright © 2017 ranjits chougale. All rights reserved.
//

import UIKit
import SideMenuController

class CustomSideMenuController: SideMenuController
{
        
        override func viewDidLoad()
        {
                super.viewDidLoad()
                // Do any additional setup after loading the view.
                performSegue(withIdentifier: "showCenterController1", sender: nil)
                performSegue(withIdentifier: "containSideMenu", sender: nil)
        }
        
        override func viewWillAppear(_ animated: Bool)
        {
                super.viewWillAppear(animated)
                self.navigationController?.navigationBar.isHidden = true
        }
        
        required init?(coder aDecoder: NSCoder)
        {
                SideMenuController.preferences.drawing.menuButtonImage = UIImage(named: "SideMenuImage")
                SideMenuController.preferences.drawing.sidePanelPosition = .overCenterPanelLeft
                SideMenuController.preferences.drawing.sidePanelWidth = 300
                SideMenuController.preferences.drawing.centerPanelShadow = true
                SideMenuController.preferences.animating.statusBarBehaviour = .showUnderlay
                super.init(coder: aDecoder)
        }
        
        override func didReceiveMemoryWarning()
        {
                super.didReceiveMemoryWarning()
                // Dispose of any resources that can be recreated.
        }
}
