//
//  WelcomeScreen.swift
//  LoginScreenSwiftUI
//
//  Created by Rachna Singh on 09/07/25.
//

import SwiftUI

struct WelcomeScreen: View {
    let user: String
    var body: some View {
        Text("Hello, \(user)")
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen(user: "")
    }
}
