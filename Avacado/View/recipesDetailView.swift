//
//  recipesDetailView.swift
//  Avacado
//
//  Created by Sohan Maurya on 10/07/24.
//

import SwiftUI

struct recipesDetailView: View {
    
    @State private var pulsate : Bool = false
    @Environment(\.dismiss) var dismiss
    var recipe : Recipe

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                Group{
                    
                    //title
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.greenAdaptive)
                        .padding(.top, 10)
                    
                    //rating
                    RatingsView(recipe: recipe)
                    
                    //cooking
                    CookingInfoView(recipe: recipe)
                    
                    //ingredients
                    Text("Ingredients")
                        .modifier(titlemodifier())
                    
                    VStack(alignment: .leading, spacing: 10){
                        ForEach(recipe.ingredients, id: \.self ){ item in
                            Text(item)
                                .font(.system(.footnote, design: .serif))
                                .multilineTextAlignment(.leading)
                            
                            Divider()
                        }
                    }
                    
                    //instructions
                    Text("Instructions")
                        .modifier(titlemodifier())
                    ForEach(recipe.instructions, id: \.self) {
                        item in
                        VStack(alignment: .center, spacing: 5) {
                            
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 32, height: 32, alignment: .center)
                                .font(Font.title.weight(.ultraLight))
                                .foregroundStyle(.greenAdaptive)
                            
                            Text(item)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                                .frame(minHeight: 100)
                                
                                
                        }
                        
                    }
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            }
        }
        .ignoresSafeArea()
        .overlay(
            HStack{
                Button{
                    dismiss()
                }label: {
                    Image(systemName: "chevron.down.circle.fill")
                        .font(.title)
                        .foregroundStyle(.white)
                        .padding(.trailing, 20)
                        .padding(.top, 10)
                        .shadow(radius: 5)
                        .opacity(pulsate ? 2 : 0.8)
                        .scaleEffect(pulsate ? 1.1 : 0.8)
                }//btn
                
            }//hstack
            , alignment: .topTrailing
        )//overlay
        .onAppear() {
            withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: true)){
                pulsate.toggle()
            }
            
        }
    }
}

#Preview {
    recipesDetailView(recipe: recipedata[0])
}
