//
//  BalanceNetworkManagerImpl.swift
//  zwallet
//
//  Created by user217931 on 4/6/22.
//

import Foundation
import Moya

public class BalanceNetworkManagerImpl: BalanceNetworkManager {

    public init() {

    }
    
    public func getBalance(completion: @escaping (GetBalanceDataResponse?, Error?) -> ()) {
        let provider = MoyaProvider<BalanceApi>()
        provider.request(.getBalance) { response in
            switch response {
            case .success(let result):
                let decoder = JSONDecoder()
                do {
                    let getBalanceResponse = try decoder.decode(GetBalanceResponse.self, from: result.data)
                    completion(getBalanceResponse.data[0], nil)
                } catch let error {
                    completion(nil, error)
                }
            case .failure(let error):
                completion(nil, error)
            }
        }
    }
}
