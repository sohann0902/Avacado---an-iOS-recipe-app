//
//  HeaderView.swift
//  Avacado
//
//  Created by Sohan Maurya on 09/07/24.
//

import SwiftUI

struct HeaderView: View {
    var header : Header
    @State private var showheadline : Bool = false
    
    var slideanimation : Animation {
        Animation.spring(response: 1.2, dampingFraction: 0.4, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    var body: some View {
        ZStack {
            Image(header.image)
                .resizable()
                .scaledToFit()
            
            HStack(alignment: .top, spacing: 0) {
                Rectangle()
                    .fill(.colorGreenLight)
                    .frame(width: 4)
                VStack(alignment: .leading, spacing: 6){
                    Text(header.headline)
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .shadow(radius: 3)
                    
                    Text(header.subheadline)
                        .font(.footnote)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(.white)
                        .shadow(radius: 3)
                    
                }//vstack
                .padding(.vertical, 0)
                .padding(.horizontal, 20)
                .frame(width: 281, height: 105)
                .background(.blackTransparentLight)
                
            }//hstack
            .frame(width: 285, height: 105, alignment: .center)
            .offset(x: -40, y: showheadline ? 55 : 200)
            .animation(slideanimation, value: showheadline)
            .onAppear(){
                showheadline = true
            }
        }//zstack
    }
}

#Preview {
    HeaderView(header: headerdata[1])
    
}
