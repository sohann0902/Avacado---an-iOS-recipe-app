//
//  RatingsView.swift
//  Avacado
//
//  Created by Sohan Maurya on 10/07/24.
//

import SwiftUI

struct RatingsView: View {
    var recipe : Recipe
    var body: some View {
        
        HStack(alignment: .center, spacing: 5){
            ForEach(1...(recipe.rating), id: \.self){ _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview {
    RatingsView(recipe: recipedata[0])
}
