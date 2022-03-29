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
        // Do any additional setup after loading the view.
    }
    
//    self.lineEmail.backgroundColor = UIColor.red
//    self.linePass.backgroundColor = UIColor.red
    
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.iconEmail.image = UIImage(systemName: "envelope.fill")
        self.iconPass.image = UIImage(systemName: "lock.fill")
        
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


