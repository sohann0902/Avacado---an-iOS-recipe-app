//
//  FactsView.swift
//  Avacado
//
//  Created by Sohan Maurya on 10/07/24.
//

import SwiftUI

struct FactsView: View {
     // MARK: - properties
    
    var fact : Fact
    var body: some View {
        ZStack {
            Text(fact.content)
                .padding(.vertical, 3)
                .padding(.leading, 55)
                .padding(.trailing, 10)
                .frame(width: 300, height: 135, alignment: .center)
                .background(
                    LinearGradient(gradient: Gradient(colors: [.colorGreenMedium, .colorGreenLight]), startPoint: .leading, endPoint: .trailing)
                )
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .font(.footnote)
            .foregroundStyle(.white)
            
            Image(fact.image)
                .resizable()
                .frame(width: 66, height: 66, alignment: .center)
                .clipShape(Circle())
                .background(
                Circle()
                    .fill(.white)
                    .frame(width: 74, height: 74, alignment: .center)
                )
                .background(
                    Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.colorGreenMedium, .colorGreenLight]), startPoint: .trailing, endPoint: .leading))
                    .frame(width: 82, height: 82)
                
                )
                .background(
                    Circle().fill(.adaptiveAppearance)
                        .frame(width: 90, height: 90)
                )
                .offset(x: -150)
            
        }//zstack
        
            
    }
}

#Preview {
    FactsView(fact: factsdata[0])
}
