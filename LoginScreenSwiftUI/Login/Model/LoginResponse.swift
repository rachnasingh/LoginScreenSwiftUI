//
//  LoginResponse.swift
//  LoginScreenSwiftUI
//
//  Created by Rachna Singh on 09/07/25.
//

import Foundation

struct LoginResponse: Decodable {
    let data: LoginResponseData
}

struct LoginResponseData: Decodable {
    let accessToken: String
    let refreshToken: String
    let fullName: String
}
