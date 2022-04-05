//
//  HomeViewProtocol.swift
//  ZWallet
//
//  Created by user217917 on 4/4/22.
//

import Foundation
protocol HomeViewProtocol{
    func getBalance(dataBalance : GetBalanceDataResponse)
    func getInvoice(dataInvoice : [HomeDataResponse])
    
    
    
    
}
