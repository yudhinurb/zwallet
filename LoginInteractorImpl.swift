//
//  LoginInteractorImpl.swift
//  zwallet
//
//  Created by user217064 on 4/4/22.
//

import Foundation


class LoginInteractorImpl: LoginInteractorProtocol {
    var interactorOutput: LoginInteractorOutputProtocol?
    let authNetworkManager: AuthNetworkManager
    
    init(networkManager: AuthNetworkManager) {
        self.authNetworkManager = networkManager
    }
    
    func postLoginData(email: String, password: String) {
        self.authNetworkManager.login(email: email, password: password) { data, error in
            if let loginData = data {
            UserDefaultHelper.shared.set(key: .userToken, value: loginData.token)
            
//            beritahu presenter jika login berhasil
            self.interactorOutput?.authenticationResult(isSuccess: true)
        } else {
            print("ini error \(String(describing: error))")
            
            self.interactorOutput?.authenticationResult(isSuccess: false)
        }
            
        }
    }
}
