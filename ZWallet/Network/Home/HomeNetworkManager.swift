//
//  HomeNetworkManager.swift
//  ZWallet
//
//  Created by user217917 on 4/4/22.
//

import Foundation

public protocol HomeNetworkManager {
    func getHistory(completion: @escaping ([HomeDataResponse]?, Error?) -> ())
}
