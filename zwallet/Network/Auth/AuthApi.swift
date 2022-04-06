//
//  AuthApi.swift
//  zwallet
//
//  Created by user217931 on 4/1/22.
//

import Foundation
import Moya

public enum AuthApi {
    case login(email: String, password:String)
}

extension AuthApi : TargetType {
    public var baseURL: URL {
        URL(string: String(describing: "http://3.89.145.177:8000"))!
    }
    
    public var path: String {
        switch self {
        case .login:
            return "auth/login"
        }
    }
    
    public var sampleData: Data {
        return Data()
    }
    
    public var method: Moya.Method {
        .post
    }
    
    public var task: Task {
        switch self {
        case .login(let email, let password):
            return .requestParameters(parameters: ["email": email, "password": password], encoding: JSONEncoding.default)
        }
    }
    
    public var headers: [String : String]? {
        return ["Content-Type": "application/json"]
    }
    
    
}
