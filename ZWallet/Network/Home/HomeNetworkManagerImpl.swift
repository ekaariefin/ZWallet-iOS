//
//  HomeNetworkManagerImpl.swift
//  ZWallet
//
//  Created by user217917 on 4/4/22.
//

import Foundation
import Moya
public class HomeNetworkManagerImpl: HomeNetworkManager {
    public func getHistory(completion: @escaping ([HomeDataResponse]?, Error?) -> ()) {
        let provider = MoyaProvider<HomeAPI>()
        provider.request(.getInvoice) { response in
            switch response {
            case .success(let result):
                let decoder = JSONDecoder()
                do {
                    let homeResponse = try decoder.decode(HomeResponse.self, from: result.data)
                    completion(homeResponse.data, nil)
                } catch let error {
                    completion(nil, error)
                }
            case .failure(let error):
                completion(nil, error)
            }
        }
    }
    
    
    
    public init() {
        
    }

   
}
