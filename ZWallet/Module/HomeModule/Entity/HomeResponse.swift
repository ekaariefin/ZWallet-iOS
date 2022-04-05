//
//  HomeDataResponse.swift
//  ZWallet
//
//  Created by user217917 on 4/4/22.
//

import Foundation

public struct HomeResponse: Codable {
    var status: Int
    var message: String
    var data: [HomeDataResponse]
}

public struct HomeDataResponse: Codable {
    public var id, sender, receiver: Int
    public var name, phone, image, type: String
    public var  amount: Int
    public var  notes, createdAt: String
}

