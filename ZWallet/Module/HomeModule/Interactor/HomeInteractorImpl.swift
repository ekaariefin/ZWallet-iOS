//
//  HomeInteractorImpl.swift
//  ZWallet
//
//  Created by user217917 on 4/4/22.
//

import Foundation

class HomeInteractorImpl : HomeInteractorProtocol{
   
    var interactorOutput: HomeInteractorOutput?
    let homeNetworkManager: HomeNetworkManager
    let balanceNetworkManager : BalanceNetworkManager?

    init (homeNetworkManager: HomeNetworkManager,balanceNetworkManager:BalanceNetworkManager) {
        self.homeNetworkManager = homeNetworkManager
        self.balanceNetworkManager = balanceNetworkManager
    }
    
    
    
    func getInvoice() {
        self.homeNetworkManager.getHistory() { data, error in
                if let homeData = data {
                    //menyimpan token
                    //trigger presenter jika proses berhasil
                    self.interactorOutput?.getInvoiceOutput(dataInvoice: homeData)
                }
                else {
                    print("ini error\(String(describing: error))")
                    //memberitahukan ke presenter jika proses gagal
//                    self.interactorOutput?.authenticationResult(isSuccess: false)
                }
            }
    }
        
        func getBalance() {
            self.balanceNetworkManager?.getBalance() { data, error in
                    if let balance = data {
                        //menyimpan token
                        //trigger presenter jika proses berhasil
                        self.interactorOutput?.getBalanceOutput(dataBalance: balance)
                    }
                    else {
                        print("ini error\(String(describing: error))")
                        //memberitahukan ke presenter jika proses gagal
    //                    self.interactorOutput?.authenticationResult(isSuccess: false)
                    }
        
        
        
    
    }
    
    }
}


