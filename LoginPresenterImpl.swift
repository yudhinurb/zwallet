//
//  LoginPresenterImpl.swift
//  zwallet
//
//  Created by user217064 on 4/4/22.
//

import Foundation
import MapKit

class LoginPresenterImpl : LoginPresenterProtocol {
  
    
    let view: LoginViewProtocol
    let interactor: LoginInteractorProtocol
    let router: LoginRouterProtocol
    
    init(view: LoginViewProtocol, interactor: LoginInteractorProtocol, router: LoginRouterProtocol)
    {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    func login(email: String, password: String) {
        self.interactor.postLoginData(email: email, password: password)
    }
}

extension LoginPresenterImpl: LoginInteractorOutputProtocol {
    func authenticationResult(isSuccess: Bool) {
        if isSuccess {
            self.router.navigateToHome()
        } else {
            self.view.showError()
        }
    }
}
