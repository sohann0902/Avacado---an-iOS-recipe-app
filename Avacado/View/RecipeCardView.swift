//
//  RecipeCardView.swift
//  Avacado
//
//  Created by Sohan Maurya on 10/07/24.
//

import SwiftUI

struct RecipeCardView: View {
     // MARK: - properties
    var recipe : Recipe
    var haptics = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showmodal : Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    Image(systemName: "bookmark")
                        .foregroundStyle(.white)
                        .font(Font.title.weight(.light))
                        .imageScale(.small)
                        .background(
                            Circle()
                                .fill(.colorGreenMedium)
                                .frame(width: 34, height: 34)
                        )
                        .shadow(color: .blackTransparentLight, radius: 2, x:0, y: 0)
                        .padding(.trailing, 10)
                        .padding(.top, 10)
                        
                    , alignment: .topTrailing
                )//overlay
            
            VStack(alignment: .leading, spacing: 12){
                
                //title
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundStyle(.colorGreenMedium)
                    .lineLimit(2)
                
                //headline
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundStyle(.gray)
                    .italic()
                
                //rates
                RatingsView(recipe: recipe)
                
                //cooking
                CookingInfoView(recipe: recipe)
                
                
            }//innnervstack
            .padding()
            .padding(.bottom, 12)
            
        }//vstack
        .background(
            .white
        )
        .clipShape(
            RoundedRectangle(cornerRadius: 12)
        )
        .shadow(color: .blackTransparentLight, radius: 8, x:0, y: 0)
        .onTapGesture {
            haptics.impactOccurred()
            showmodal = true
        }
        .sheet(isPresented: $showmodal, content: {
            recipesDetailView(recipe: recipe)
        })
    }
}

#Preview {
    RecipeCardView(recipe: recipedata[0])
}
