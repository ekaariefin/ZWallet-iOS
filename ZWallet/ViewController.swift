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
        self.navigationController!.pushViewController(vc, animated: true)
    }
    

}

enum NunitoFonts {
    static func nunitoLight(sizeOf size: CGFloat) -> UIFont? {
        UIFont(name: "NunitoSans-Light", size: size)
    }
    static func nunitoRegular(sizeOf size: CGFloat) -> UIFont? {
        UIFont(name: "NunitoSans-Regular", size: size)
    }
    static func nunitoBold(sizeOf size: CGFloat) -> UIFont? {
        UIFont(name: "NunitoSans-Bold", size: size)
    }
    static func nunitoSemiBold(sizeOf size: CGFloat) -> UIFont? {
        UIFont(name: "NunitoSans-SemiBold", size: size)
    }
    static func nunitoItalic(sizeOf size: CGFloat) -> UIFont? {
        UIFont(name: "NunitoSans-Italic", size: size)
    }
    static func nunitoBlack(sizeOf size: CGFloat) -> UIFont? {
        UIFont(name: "NunitoSans-Black", size: size)
    }
    
}


