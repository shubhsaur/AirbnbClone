//
//  LoginViewModel.swift
//  AirbnbClone
//
//  Created by Shubham Saurabh on 22/06/24.
//

import SwiftUI

struct LoginViewModel: View {
    @Binding var isShowingSheet: Bool
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        VStack{
            Image("airbnb-logo")
                .resizable()
                .frame(width: 160, height: 160)
            
            TextField("Enter your email", text: $email)
                .padding(10)
                .background(Color(.systemGray6))
                .font(.headline)
                .fontWeight(.semibold)
                .padding()
                .padding(.bottom, -30)
            
            TextField("Enter your password", text: $password)
                .padding(10)
                .background(Color(.systemGray6))
                .font(.headline)
                .fontWeight(.semibold)
                .padding()
                .padding(.top, 0)
            
            HStack {
                Spacer()
                Link("Forgot Password?",
                     destination: URL(string: "https://www.example.com/")!)
            }
            .padding(.trailing)
            
            Button {
                print("Log in")
            } label: {
                Text("Log in")
                    .foregroundStyle(.white)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 50)
                    .background(.pink)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            
        }
    }
}

#Preview {
    LoginViewModel(isShowingSheet: .constant(true))
}
