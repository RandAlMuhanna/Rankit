//
//  CreateAcountPage.swift
//  Rankit
//
//  Created by Wala Almuheef on 07/04/1444 AH.
//

import SwiftUI

struct CreateAcountPage: View {
    
    @State var username = ""
    @State var email = ""
    @State var password = ""
    @State var confirm = ""
    @State var showVerfySheet = false
    
    var body: some View {
        NavigationView(){
            
            
            
            ZStack{
                
                Rectangle()
                
                    .foregroundColor(Color(red: 237/255, green: 237/255, blue:237/255))
                    .frame(maxWidth: .infinity , maxHeight: .infinity)
                    .cornerRadius(27)
                    .padding(.top, 340)
                    .shadow(radius: 15)
                    .ignoresSafeArea()
                
                VStack(alignment: .center, spacing: 30){
                    
                    TextField("Full Name", text: $username)
                        .padding()
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .cornerRadius(8)
                    
                    TextField("Email", text: $email)
                        .padding()
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .cornerRadius(8)
                    
                    
                    TextField("Password", text: $password)
                        .padding()
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .cornerRadius(8)
                    
                    TextField("Confirm Password", text: $confirm)
                        .padding()
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .cornerRadius(8)
                    
                    Button(action: {showVerfySheet.toggle()}, label: {Text("Sign Up")})
                        .frame(maxWidth: 280 , maxHeight: 50)
                        .foregroundColor(.white)
                        .background(Color(red: 94/255, green: 126/255, blue: 152/255))
                        .cornerRadius(8)
                }.padding(.top, 350)
                    .sheet(isPresented: $showVerfySheet, content: {Verification()})
                
                VStack {
                    Text("Create Account")
                        .font(.system(size: 37, weight: .heavy))
                        .foregroundColor(Color(red: 94/255, green: 126/255, blue: 152/255))
                }.padding(.trailing,80)
                    .padding(.bottom, 250)
            }
            
            .navigationTitle("Create Account")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
            
            
        }
        
    }
}

struct CreateAcountPage_Previews: PreviewProvider {
    static var previews: some View {
        CreateAcountPage()
    }
}
