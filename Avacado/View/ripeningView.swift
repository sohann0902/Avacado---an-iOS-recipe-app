//
//  ripeningView.swift
//  Avacado
//
//  Created by Sohan Maurya on 10/07/24.
//

import SwiftUI

struct ripeningView: View {
    @State private var slidein : Bool = false
    var slideanimation : Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.35)
    }
    var ripening : Ripening
    
    var body: some View {
        
        VStack {
            Image(ripening.image)
                .resizable()
                .frame(width: 110, height: 110)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(.colorGreenLight)
                        .frame(width: 130, height: 130)
                )
                .background(
                    Circle()
                        .fill(.adaptiveAppearance)
                        .frame(width: 150, height: 150)
                )
                .zIndex(1)
                .animation(slideanimation, value: slidein)
                .offset(y: slidein ? 40 : -40)
            
            VStack(alignment: .center, spacing: 10){
                
                //stage
                Text("Stage \(ripening.stage)")
                    .font(.system(.largeTitle, design: .serif))
                    .fontWeight(.heavy)
                    .foregroundStyle(.colorGreenMedium)
                    .padding(.top, 65)
                    .frame(width: 180)
                //title
                Text(ripening.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundStyle(.colorGreenMedium)
                    .frame(width: 220)
                    .padding(.vertical, 10)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [.white, .colorGreenLight]), startPoint: .top, endPoint: .bottom))
                            .shadow(color: .blackTransparentLight, radius: 6, y:6)
                    )
                Spacer()
                //description
                Text(ripening.description)
                    .foregroundStyle(.colorGreenDark)
                    .fontWeight(.bold)
                    .font(.system(.callout, design: .serif))
                    .frame(width: 250)
                
                Spacer()
                //ripeness
                Text(ripening.ripeness)
                    .font(.system(.callout, design: .serif))
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
                    .frame(width: 180)
                    .padding(.vertical, 12)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [.colorGreenMedium, .colorGreenDark]), startPoint: .top, endPoint: .bottom))
                            .shadow(color: .blackTransparentLight, radius: 6, y:6)
                    )
                
                //instruction
                Text(ripening.instruction)
                    .font(.footnote)
                    .foregroundStyle(.colorGreenLight)
                    .fontWeight(.bold)
                    .lineLimit(3)
                    .frame(width: 160)
                
                Spacer()
            }
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 300, height: 550, alignment: .center)
            .background(
                LinearGradient(gradient: Gradient(colors: [.colorGreenLight, .colorGreenMedium]), startPoint: .top, endPoint: .bottom)
            ).clipShape(
                RoundedRectangle(cornerRadius: 20)
            )
            
            
        }
        .ignoresSafeArea()
        .onAppear(){
            slidein = true
        }
        
        
        
        
    }
}

#Preview {
    ripeningView(ripening: ripeningdata[0])
}
