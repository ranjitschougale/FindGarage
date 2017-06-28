//
//  LoginViewController.swift
//  FindGarage
//
//  Created by webwerks on 6/28/17.
//  Copyright © 2017 ranjits chougale. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController
{
        //MARK:- IBOutlet
        @IBOutlet weak var lblLoginType: UILabel!
        @IBOutlet weak var txtEmail: UITextField!
        @IBOutlet weak var txtPassword: UITextField!
        @IBOutlet weak var viewEmail: UIView!
        @IBOutlet weak var viewPassword: UIView!
        @IBOutlet weak var btnLogin: UIButton!
        @IBOutlet weak var scrollView: UIScrollView!
        
        //MARK:- Variable Declaration
        
        //MARK:- ViewController Methods
        override func viewDidLoad()
        {
                super.viewDidLoad()
                // Do any additional setup after loading the view.
                self.navigationController?.navigationBar.isTranslucent = false
                self.setViews()
                txtEmail.text = "test@test.com"
                txtPassword.text = "123456"
        }
        
        override func viewWillAppear(_ animated: Bool)
        {
                super.viewWillAppear(animated)
                self.navigationController?.navigationBar.isHidden = false
                title =  "Login"
        }
        
        override func didReceiveMemoryWarning()
        {
                super.didReceiveMemoryWarning()
                // Dispose of any resources that can be recreated.
        }
        
        //MARK:- Other Methods
        func setViews()
        {
                self.btnLogin.layer.cornerRadius = 5
        }
        
        //MARK:- Button Actions
        @IBAction func btnLoginAction(_ sender: Any)
        {
                if txtEmail.text?.characters.count == 0
                {
                        //show alert
                        Constants.ShowAlert.showAlertController(strMessage: "Please enter email", viewController: self)
                        return
                }
                if !Constants.EmailValidation.validateEmail(testStr: txtEmail.text!)
                {
                        Constants.ShowAlert.showAlertController(strMessage: "Please enter valid email", viewController: self)
                        return
                }
                if txtPassword.text?.characters.count == 0
                {
                        Constants.ShowAlert.showAlertController(strMessage: "Please enter password", viewController: self)
                        return
                }
                callLoginWS()
        }
        
        @IBAction func btnSignUpNowAction(_ sender: Any)
        {
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
                self.navigationController?.pushViewController(vc, animated: true)
        }
        
        @IBAction func btnForgotPasswordAction(_ sender: Any)
        {
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "ForgotPasswordViewController") as! ForgotPasswordViewController
                self.navigationController?.pushViewController(vc, animated: true)
        }
        
        //MARK:- Other Methods
        func callLoginWS()
        {
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                appDelegate.showSideMenuViewController()
        }
}

//MARK:-
extension LoginViewController : UITextFieldDelegate
{
        func textFieldShouldReturn(_ textField: UITextField) -> Bool
        {
                textField.resignFirstResponder()
                return true;
        }
        
        func textFieldDidBeginEditing(_ textField: UITextField)
        {
                self.scrollView.contentInset = UIEdgeInsetsMake(0, 0, 220, 0)
                var rc : CGRect = textField.bounds
                rc = textField.convert(rc, to: self.scrollView)
                rc.origin.x = 0
                rc.origin.y -= 60
                rc.size.height = 200
                
                self.scrollView.scrollRectToVisible(rc, animated: true)
        }
        
        
        func textFieldDidEndEditing(_ textField: UITextField)
        {
                self.scrollView.contentInset = UIEdgeInsetsMake(0, 0, 0, 0)
                var rc : CGRect = textField.bounds
                rc = textField.convert(rc, to: self.scrollView)
                rc.origin.x = 0
                rc.origin.y = 0
                rc.size.height = 200
                self.scrollView.scrollRectToVisible(rc, animated: true)
        }
}
