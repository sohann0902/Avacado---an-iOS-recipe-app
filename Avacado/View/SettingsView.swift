//
//  SettingsView.swift
//  Avacado
//
//  Created by Sohan Maurya on 09/07/24.
//

import SwiftUI

struct SettingsView: View {
    @State private var notification : Bool = true
    @State private var bgrefresh : Bool = false
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            //header
            VStack {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: .blackTransparentdark, radius: 8, x:0, y: 4)
                
                Text("Avocados")
                    .foregroundStyle(.greenAdaptive)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
            }.padding()
            
            Form {
                Section {
                    Toggle(isOn: $notification) {
                        Text("Enable Notification")
                    }
                    
                    Toggle(isOn: $bgrefresh) {
                        Text("Enable background refresh")
                    }
                } header: {
                    Text("General Settings")
                }
                
                Section{
                    HStack{
                        Text("Product")
                            .foregroundStyle(.gray)
                        Spacer()
                        Text("Avocado Recipes")
                    }
                    HStack{
                        Text("Compatibility")
                            .foregroundStyle(.gray)
                        Spacer()
                        Text("iPhone & iPad")
                    }
                    HStack{
                        Text("Developer")
                            .foregroundStyle(.gray)
                        Spacer()
                        Text("Sohan Maurya")
                    }
                    HStack{
                        Text("Designer")
                            .foregroundStyle(.gray)
                        Spacer()
                        Text("Sohan Maurya")
                    }
                    HStack{
                        Text("Website")
                            .foregroundStyle(.gray)
                        Spacer()
                        Text("apple.sohan.com")
                    }
                    HStack{
                        Text("Version")
                            .foregroundStyle(.gray)
                        Spacer()
                        Text("1.0.0")
                    }
                }header: {
                    Text("Apllication")
                } footer: {
                    HStack{
                        Spacer()
                        Text("© All rights reserved. Sohan maurya")
                            .font(.footnote)
                        .foregroundStyle(.gray)
                        Spacer()
                    }.padding(.top)
                        
                }
                
            }//form
            
        }//vstack
        .frame(maxWidth: 640)
        
        
        
        
    }
}

#Preview {
    SettingsView()
}
