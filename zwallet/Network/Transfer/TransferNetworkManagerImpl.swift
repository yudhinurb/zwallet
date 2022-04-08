//
//  TransferNetworkManagerImpl.swift
//  zwallet
//
//  Created by user215490 on 4/7/22.
//

import Foundation
import Moya

class TransferNetworkManagerImpl: TransferNetworkManager {
    public init(){
        
    }
    
    func transfer(receiver: String, amount: Int, notes: String, completion: @escaping (InputAmountResponse?, Error?) -> ()) {
        let provider = MoyaProvider<AuthApi>()
        provider.request(.transfer(receiver: receiver, amount: amount, notes: notes)) { result in switch result {
            case .success(let res):
                let decoder = JSONDecoder()
                do {
                    let responseTransfer = try decoder.decode(InputAmountResponse.self, from: res.data)
                    completion(responseTransfer, nil)
                } catch {
                    completion(nil, error)
                }
            case .failure(let err):
                completion(nil, err)
            }
        }
    }
}
