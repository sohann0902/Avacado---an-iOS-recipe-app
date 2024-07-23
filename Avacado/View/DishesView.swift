//
//  DishesView.swift
//  Avacado
//
//  Created by Sohan Maurya on 10/07/24.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 4){
            VStack (alignment: .leading, spacing: 4){
                dishleft(image: "icon-toasts", text: "Toasts")
                Divider()
                dishleft(image: "icon-tacos", text: "Tacos")
                Divider()
                dishleft(image: "icon-salads", text: "Salads")
                Divider()
                dishleft(image: "icon-halfavo", text: "Spreads")
            }
            
            VStack(alignment: .center, spacing: 16) {
                HStack {
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .font(Font.title.weight(.ultraLight))
                    .imageScale(.large)
                HStack {
                    Divider()
                }
            }
            
            VStack(alignment: .trailing, spacing: 4) {
                dishright(image: "icon-guacamole", text: "Guacamole")
                Divider()
                dishright(image: "icon-sandwiches", text: "Sandwiches")
                Divider()
                dishright(image: "icon-soup", text: "Soup")
                Divider()
                dishright(image: "icon-smoothies", text: "Smoothie")
            }
        }
        .font(.system(.callout, design: .serif))
        .foregroundStyle(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
        
    }
}

struct iconmodifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}

#Preview {
    DishesView()
}
