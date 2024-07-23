//
//  ContentView.swift
//  Avacado
//
//  Created by Sohan Maurya on 05/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false){
            
            VStack(alignment: .center, spacing: 20) {
                // MARK: - HEADER
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .center, spacing: 0) {
                        ForEach(headerdata) { item in
                            HeaderView(header: item)
                                .frame(width: UIScreen.main.bounds.width)
                        }
                    }
                }
                
                 // MARK: - dishes
                Text("Avocado dishes")
                    .modifier(titlemodifier())
                DishesView()
                    .frame(maxWidth: 640)
                
                // MARK: - Facts
                Text("Avocado Facts")
                    .modifier(titlemodifier())
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top, spacing: 60){
                        ForEach(factsdata){
                            item in
                            FactsView(fact: item)
                        }
                        .padding(.vertical)
                        .padding(.leading, 60)
                        .padding(.trailing, 30)
                    }
                    
                }
                
                 // MARK: - Recipes
                VStack(alignment: .center,spacing: 20) {
                    ForEach(recipedata){item in
                        RecipeCardView(recipe: item)
                    }
                }
                .frame(maxWidth: 640)
                .padding(.horizontal)
                
                // MARK: - FOOTER
                VStack(alignment: .center, spacing: 20){
                    Text("All about Avocados")
                        .modifier(titlemodifier())
                    Text("Everything you wanted to know about avocados but were too afraid to ask,")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.gray)
                        .frame(minHeight: 60)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }
            
        }
        .ignoresSafeArea()
        .padding(0)
        
    }
}
struct titlemodifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .fontWeight(.bold)
            .foregroundStyle(.greenAdaptive)
            .padding(8)
    }
}

#Preview {
    ContentView()
}
