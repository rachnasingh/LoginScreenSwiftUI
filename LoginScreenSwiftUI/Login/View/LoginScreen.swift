//
//  LoginView.swift
//  LoginScreenSwiftUI
//
//  Created by Rachna Singh on 09/07/25.
//

import SwiftUI

struct LoginScreen: View {
    @State var navigationFlag = false
    @State private var displayErrorMessage: Bool = false
    @ObservedObject var viewModel = LoginViewModel()
    var body: some View {
        NavigationView {
            VStack {
                
                Spacer()
                
                VStack {
                    TextField("Username", text: $viewModel.username, onEditingChanged: { isChanged in
                        self.displayErrorMessage = true
                    }).autocapitalization(.none).disableAutocorrection(true).padding(.top, 20)
                    
                    Divider()
                    
                    SecureField("Password", text: $viewModel.password)
                        .padding(.top, 20)
                        .onTapGesture {
                            
                            self.displayErrorMessage = true
                        }
                    
                    Divider()
                }
                
                Spacer()
                
                Button("Login", action:{ viewModel.login { response in
                    navigationFlag = true
                }})
                    .font(.system(size: 24, weight: .bold, design: .default))
                    .frame(maxWidth: .infinity, maxHeight: 60)
                    .foregroundColor(.white)
                    .background(.blue)
                    .disabled(viewModel.password.isEmpty || viewModel.username.isEmpty)
                
                if (viewModel.password.isEmpty || viewModel.username.isEmpty) && displayErrorMessage {
                    Text("Username/Password is empty!").foregroundColor(.red)
                }
                
                NavigationLink(destination: WelcomeScreen(user: viewModel.username),
                               isActive: self.$navigationFlag,
                               label: {
                    EmptyView()
                })
            }.padding(30)
                .navigationBarTitle("")
                .navigationBarHidden(true)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
