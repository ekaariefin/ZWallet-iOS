//
//  HomeInteractorOutput.swift
//  ZWallet
//
//  Created by user217917 on 4/4/22.
//

import Foundation
protocol HomeInteractorOutput {
    func getInvoiceOutput(dataInvoice : [HomeDataResponse])
    func getBalanceOutput (dataBalance : GetBalanceDataResponse) 
}
