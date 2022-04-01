//
//  AuthNetworkManager.swift
//  zwallet
//
//  Created by user217075 on 3/31/22.
//

import Foundation

public protocol AuthNetworkManager{
    func login(email: String, password: String, completion: @escaping (LoginDataResponse?, Error?)->())
}
