//
//  ViewController.swift
//  ZWallet
//
//  Created by user217917 on 3/29/22.
//

import UIKit

class ViewController: UIViewController {
    //MARKS: TEXTFIELD
    @IBOutlet weak var inputEmail: UITextField!
    @IBOutlet weak var inputPass: UITextField!
    
    //MARKS: IMG-ICON
    @IBOutlet weak var iconEmail: UIImageView!
    @IBOutlet weak var iconPass: UIImageView!
    
    
    //MARKS: BUTTON
    @IBOutlet weak var btnForgotPass: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    
    //UNDERLINE
    @IBOutlet weak var lineEmail: UIView!
    @IBOutlet weak var linePass: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.inputPass.isSecureTextEntry = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    
    }
    
    
    @IBAction func inputEmailOnClick(_ sender: Any) {
        self.lineEmail.backgroundColor = .tintColor
        self.iconEmail.image = UIImage(systemName: "envelope.fill")
    }
    
    @IBAction func inputPasswordOnClick(_ sender: Any) {
        self.linePass.backgroundColor = .tintColor
        self.iconPass.image = UIImage(systemName: "lock.fill")
    }
    
    @IBAction func btnForgotOnClick(_ sender: UIButton) {
        let toResetPassword = UIStoryboard(name: "Main", bundle: nil)
        let vc = toResetPassword.instantiateViewController(withIdentifier: "ResetPasswordViewController") as! ResetPasswordViewController
        if let navigation = self.navigationController {
            navigation.pushViewController(vc, animated: true)
        }

    }
    

}


