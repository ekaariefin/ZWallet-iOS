//
//  HomeViewController.swift
//  ZWallet
//
//  Created by user217917 on 4/4/22.
//

import UIKit

class HomeViewController: UIViewController{

    @IBOutlet weak var numberPhone: UILabel!
    @IBOutlet weak var balance: UILabel!
    @IBOutlet weak var imageUser: UIImageView!
    
    @IBOutlet weak var hello: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

}


extension HomeViewController : UITableViewDelegate {
    
}

extension HomeViewController : HomeViewProtocol{
    func getBalance(dataBalance: GetBalanceDataResponse) {
        balance.text = dataBalance.balance.formatToIdr()
        numberPhone.text = dataBalance.phone
        
    }
    
    func getInvoice(dataInvoice: [HomeDataResponse]) {
        hello.text = "Hello"
    }
    
    
}


