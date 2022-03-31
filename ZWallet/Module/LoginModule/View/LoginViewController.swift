//
//  LoginViewController.swift
//  ZWallet
//
//  Created by user217917 on 3/30/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    //TEXTFIELD
    @IBOutlet weak var inputEmail: UITextField!
    @IBOutlet weak var inputPass: UITextField!
    
    //ICON
    @IBOutlet weak var iconEmail: UIImageView!
    @IBOutlet weak var iconPass: UIImageView!
    
    //UNDERLINE
    
    @IBOutlet weak var linePass: UIView!
    @IBOutlet weak var lineEmail: UIView!
    
    
    var presenter: LoginPresenter?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputEmail.delegate = self
        inputPass.delegate = self
        self.inputPass.isSecureTextEntry = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    
    }
    

}

extension LoginViewController: UITextFieldDelegate {

    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == inputEmail {
            iconEmail.image = UIImage(systemName: "envelope.fill")
            lineEmail.backgroundColor = .blue
        }
        else if textField == inputPass {
            iconPass.image = UIImage(systemName: "lock.fill")
            linePass.backgroundColor = .blue
        }
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == inputEmail {
            if textField.text == "" {
                iconEmail.image = UIImage(systemName: "envelope")
                lineEmail.backgroundColor = .gray
            }
            else if(textField.text!.count < 5) {
                lineEmail.backgroundColor = .red
            }
        }
        else if textField == inputPass {
            if textField.text == "" {
                iconPass.image = UIImage(systemName: "lock")
                linePass.backgroundColor = .gray
            }
            else if (textField.text!.count < 5) {
                linePass.backgroundColor = .red
            }
        }
        
    }
    
}

extension LoginViewController: LoginView {
    func showSuccess() {
        //TODO: DO SOME ACTION HERE
    }
    
    func showError() {
        //TODO: DO SOME ACTION HERE
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
