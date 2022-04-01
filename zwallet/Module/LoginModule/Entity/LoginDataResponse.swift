//
//  LoginDataResponse.swift
//  zwallet
//
//  Created by user217075 on 3/31/22.
//

import Foundation


public struct LoginResponse: Codable{
    public var status: String
    public var message: String
    public var data: LoginDataResponse
}

public struct LoginDataResponse: Codable {
    public var id: Int
    public var email: String
    public var token: String
}
