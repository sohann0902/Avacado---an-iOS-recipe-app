//
//  dish.swift
//  Avacado
//
//  Created by Sohan Maurya on 10/07/24.
//

import SwiftUI

struct dishleft: View {
    var image : String
    var text : String
    var body: some View {
        HStack(){
            Image(image)
                .resizable()
                .frame(width: 42, height: 42,alignment: .center)
            Spacer()
            Text(text)
        }
    }
}

#Preview {
    dishleft(image: "icon-toasts", text: "Toasts")
}
