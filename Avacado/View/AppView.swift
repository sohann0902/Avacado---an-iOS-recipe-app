//
//  AppView.swift
//  Avacado
//
//  Created by Sohan Maurya on 09/07/24.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            
            AvocadosView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocados")
                }
            
            ContentView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }
            
            RipeningStagesView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
                }
            
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }
        }
    }
}

#Preview {
    AppView()
        
}
