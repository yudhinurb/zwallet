//
//  RegisterInteractorImpl.swift
//  zwallet
//
//  Created by user215490 on 4/6/22.
//

import Foundation

class RegisterInteractorImpl: RegisterInteractorProtocol {
    var interactorOutput: RegisterInteractorOutput?
    var authNetworkManager: AuthNetworkManager
    
    init(networkManager: AuthNetworkManager) {
        self.authNetworkManager = networkManager
    }
    
    func postRegisterData(username: String, email: String, password: String) {

    }
}
