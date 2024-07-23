//
//  RipeningStagesView.swift
//  Avacado
//
//  Created by Sohan Maurya on 09/07/24.
//

import SwiftUI

struct RipeningStagesView: View {
    var body: some View {
        TabView{
            ForEach(ripeningdata){
                item in
                ripeningView(ripening: item)
            }
        }.tabViewStyle(PageTabViewStyle())
            .ignoresSafeArea()
    }
}

#Preview {
    RipeningStagesView()
}
