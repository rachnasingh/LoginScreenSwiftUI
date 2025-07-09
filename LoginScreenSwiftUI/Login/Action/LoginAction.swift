//
//  LoginAction.swift
//  LoginScreenSwiftUI
//
//  Created by Rachna Singh on 09/07/25.
//

import Foundation
struct LoginAction {
    
    var parameters: LoginRequest
    
    func call(completion: @escaping (LoginResponse) -> Void) {
        //Dummy
        completion(LoginResponse(data: LoginResponseData(accessToken: "dsfdsfdf", refreshToken: "fasgasfgsafd", fullName: "Snehil Singh!")))
        //Api Call
       /* let scheme: String = "https"
        let host: String = "base_url"
        let path = "/login"
        
        var components = URLComponents()
        components.scheme = scheme
        components.host = host
        components.path = path
        
        guard let url = components.url else {
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "post"
        
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        do {
            request.httpBody = try JSONEncoder().encode(parameters)
        } catch {
            // Error: Unable to encode request parameters
        }
        
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            if let data = data {
                let response = try? JSONDecoder().decode(LoginResponse.self, from: data)
                
                if let response = response {
                    completion(response)
                } else {
                    // Error: Unable to decode response JSON
                }
            } else {
                // Error: API request failed

                if let error = error {
                    print("Error: \(error.localizedDescription)")
                }
            }
        }
        task.resume()*/
    }
}
