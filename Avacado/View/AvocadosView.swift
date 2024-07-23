//
//  AvocadosView.swift
//  Avacado
//
//  Created by Sohan Maurya on 09/07/24.
//

import SwiftUI

struct AvocadosView: View {
     // MARK: - properties
    
    @State private var isanimating : Bool = false
    
    var body: some View {
        VStack{
            Spacer()
            
            Image("avocado")
                .resizable()
                .scaledToFit()
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: .blackTransparentdark, radius: 12, x: 0, y: 8)
                .scaleEffect(isanimating ? 1 : 0.9)
                .opacity(isanimating ? 1 : 0.9)
            VStack {
                
                Text("Avocados")
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundStyle(.white)
                    .padding()
                    .shadow(color: .blackTransparentdark, radius: 4, x: 0, y: 4)
                
                Text("""
Creamy, green, and full of nutrients!
Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
""")
                .lineLimit(nil)
                .font(.system(.headline, design: .serif))
                .multilineTextAlignment(.center)
                .foregroundStyle(.colorGreenLight)
                .lineSpacing(5)
                .frame(maxWidth: 640, minHeight: 120)
                
                
            }.padding()
            
            Spacer()
            
        }//vstack
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .onAppear(){
            withAnimation(.easeInOut(duration: 1.2).repeatForever(autoreverses: true)){
                isanimating.toggle()
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    AvocadosView()
}
