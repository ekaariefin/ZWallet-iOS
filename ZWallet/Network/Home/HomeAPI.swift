//
//  HomeAPI.swift
//  ZWallet
//
//  Created by user217917 on 4/4/22.
//

import Foundation
import Moya
 
public enum HomeAPI {
    case getInvoice

}

extension HomeAPI: TargetType {
    public var baseURL: URL {
                return URL(string: String(describing: "http://3.89.145.177:8000"))!

    }
    
    public var path: String {
                switch self {
                case .getInvoice:
                    return "/home/getInvoice"
               
        
    }
    }
    public var method: Moya.Method {
                return .post

    }
    
    public var task: Task {
                switch self {
                case .getInvoice:
                         return .requestPlain
                }
        
                
    }
    
    public var headers: [String : String]? {
        let token: String = UserDefaultHelper.shared.get(key: .userToken) ?? ""
              return [
                  "Content-Type": "application/json" ,
                  "Authorization": "Bearer \(token)"
              ]
    }
}
    
    
