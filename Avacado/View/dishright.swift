//
//  dishright.swift
//  Avacado
//
//  Created by Sohan Maurya on 10/07/24.
//

import SwiftUI

struct dishright: View {
    var image : String
    var text : String
    var body: some View {
        HStack(){
            Text(text)
            Spacer()
            Image(image)
                .resizable()
                .frame(width: 42, height: 42,alignment: .center)
            
            
        }
    }
}

#Preview {
    dishright(image: "icon-guacamole", text: "Guacamole")
}
