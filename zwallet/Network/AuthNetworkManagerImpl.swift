//
//  AuthNetworkManagerImpl.swift
//  zwallet
//
//  Created by user217075 on 3/31/22.
//

import Foundation
import Moya

public class AuthNetworkManagerImpl: AuthNetworkManager{
    public init(){
        
    }
    
    public func login(email: String, password: String, completion: @escaping (LoginDataResponse?, Error?) -> ()) {
        let provider = MoyaProvider<AuthAPI>()
        provider.request(.login(email: email, password: password)){ result in switch result{
            case .success(let res):
                let decoder = JSONDecoder()
                do{
                    let responseLogin = try decoder.decode(LoginResponse.self, from: res.data)
                    completion(responseLogin.data, nil)
                } catch{
                    completion(nil, error)
                }
            case .failure(let err):
                completion(nil, err)
            
        }}
    }
    
    
}
