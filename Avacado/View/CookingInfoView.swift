//
//  CookingInfoView.swift
//  Avacado
//
//  Created by Sohan Maurya on 10/07/24.
//

import SwiftUI

struct CookingInfoView: View {
    var recipe : Recipe
    var body: some View {
        HStack(alignment: .center, spacing: 12){
            HStack(alignment: .center, spacing: 2){
                Image(systemName: "person.2")
                Text("Serves : \(recipe.serves)")
            }
            HStack(alignment: .center, spacing: 2){
                Image(systemName: "clock")
                Text("Prep : \(recipe.preparation)")
            }
            HStack(alignment: .center, spacing: 2){
                Image(systemName: "flame")
                Text("Cooking : \(recipe.cooking)")
            }
        }
        .font(.footnote)
        .foregroundStyle(.gray)
    }
}

#Preview {
    CookingInfoView(recipe: recipedata[0])
}
