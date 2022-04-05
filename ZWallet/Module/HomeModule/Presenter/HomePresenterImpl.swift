//
//  HomePresenterImpl.swift
//  ZWallet
//
//  Created by user217917 on 4/4/22.
//

import Foundation

class HomePresenterImpl : HomePresenterProtocol{
    let view: HomeViewProtocol
    let interactor: HomeInteractorProtocol
    let router: HomeRouterProtocol
    
    func getBalance()  {
        self.interactor.getBalance()
    }
    
    func getInvoice()  {
        self.interactor.getInvoice()
    }
    
    init(view: HomeViewProtocol, interactor: HomeInteractorProtocol, router: HomeRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
   
    

}

extension HomePresenterImpl: HomeInteractorOutput {
    func getInvoiceOutput(dataInvoice: [HomeDataResponse]) {
        self.view.getInvoice(dataInvoice: dataInvoice)
    }
    
    func getBalanceOutput(dataBalance: GetBalanceDataResponse)  {
        self.view.getBalance(dataBalance: dataBalance)
    }
}
    
//    func authenticationResult(isSuccess: Bool) {
//        if isSuccess {
//            self.router.navigateToHome()
//        }
//        else {
//            self.view.showError()
//        }
//    }
//
//
//}

    

