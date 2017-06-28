//
//  Constants.swift
//  FindGarage
//
//  Created by Sarika Chougale on 27/06/17.
//  Copyright © 2017 ranjits chougale. All rights reserved.
//

import UIKit

class Constants: NSObject
{
        //MARK: App Constants
        struct APP_CONSTANTS
        {
                static let k_APP_COLOR = UIColor(red: 164/255.0, green: 32/255.0, blue: 21/255.0, alpha: 1.0)
        }
        
        struct APPKEYS
        {
                static let k_APP_NAME = "Find Garage"
                
        }
        
        
        //MARK: Other Constant Functions
        struct ShowAlert
        {
                static func showAlertController(strMessage : String, viewController : UIViewController)
                {
                        let alert = UIAlertController(title: Constants.APPKEYS.k_APP_NAME, message: strMessage, preferredStyle: .alert)
                        let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                        alert.addAction(okAction)
                        viewController.present(alert, animated: true, completion: nil)
                }
        }
        
        struct EmailValidation
        {
                static func validateEmail(testStr:String) -> Bool
                {
                        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
                        
                        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
                        return emailTest.evaluate(with: testStr)
                }
        }
}
