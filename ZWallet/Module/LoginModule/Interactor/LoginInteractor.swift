//
//  LoginInteractor.swift
//  ZWallet
//
//  Created by user217917 on 3/31/22.
//

import Foundation

protocol LoginInteractor {
    func postLoginData(email: String, password: String)
}
