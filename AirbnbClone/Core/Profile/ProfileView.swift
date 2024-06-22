//
//  ProfileView.swift
//  AirbnbClone
//
//  Created by Shubham Saurabh on 21/06/24.
//

import SwiftUI

struct ProfileView: View {
    @State private var isShowingSheet: Bool = false
    
    var body: some View {
        VStack {
            //Profile login view
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Text("Log in to start planning your next trip")
                }
                
                
                Button {
                    print("Log in")
                    isShowingSheet.toggle()
                } label: {
                    Text("Log in")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 40)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                .sheet(isPresented: $isShowingSheet) {
                    LoginViewModel(isShowingSheet: $isShowingSheet)
                }
                
                HStack {
                    Text("Dont have an account?")
                    
                    Text("Sign Up")
                        .fontWeight(.semibold)
                        .underline()
                    
                }
                .font(.caption)
            }
            
            //proflie options
            VStack(spacing: 24) {
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "gear", title: "Accessibility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the help center")
            }
            .padding(.vertical)
        }
        .padding()
        
    }
}

#Preview {
    ProfileView()
}
