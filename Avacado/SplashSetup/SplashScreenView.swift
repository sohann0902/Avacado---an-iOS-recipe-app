//
//  SplashScreenView.swift
//  Avacado
//
//  Created by Sohan Maurya on 09/07/24.
//

import SwiftUI

struct SplashScreenView: View {
    
    
    @Binding var ispresented : Bool
    @State private var scale = CGSize(width: 0.7, height: 0.7)
    @State private var opacity = 1.0
    
    var body: some View {
        ZStack {

            VStack(alignment: .center, spacing: 15 ){
                Spacer()
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    
                
                Text("Avocados")
                    .font(.system(size: 24))
                    .fontWeight(.heavy)
                    .foregroundStyle(.white)
                Spacer()
            }.scaleEffect(scale)
            
                
        }.background(
            Image("background")
                .resizable()
                .scaledToFill()
                
        )
        .ignoresSafeArea()
        .opacity(opacity)
        .onAppear() {
            withAnimation(.easeInOut(duration: 1)){
                scale = CGSize(width: 1, height: 1)
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
                withAnimation(.easeInOut(duration: 0.5)){
                    scale = CGSize(width: 60, height: 60)
                    opacity = 0.0
                }
            })
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: {
                withAnimation(.easeIn(duration: 0.2)){
                    ispresented.toggle()
                }
            })
        }
        
    }
}

#Preview {
    SplashScreenView(ispresented: .constant(true))
}
