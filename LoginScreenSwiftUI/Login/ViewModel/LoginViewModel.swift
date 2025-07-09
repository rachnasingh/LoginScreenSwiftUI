//
//  LoginViewModel.swift
//  LoginScreenSwiftUI
//
//  Created by Rachna Singh on 09/07/25.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var username = ""
    @Published var password = ""
    
    func login(_ completion: @escaping (LoginResponse) -> Void) {
        LoginAction(parameters: LoginRequest(username: username, password: password)).call(completion: completion)
    }
    
}
