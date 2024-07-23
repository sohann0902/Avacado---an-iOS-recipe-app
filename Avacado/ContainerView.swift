//
//  ContainerView.swift
//  Avacado
//
//  Created by Sohan Maurya on 09/07/24.
//

import SwiftUI

struct ContainerView: View {
    @State private var isSplashViewpresented = true
    var body: some View {
        if !isSplashViewpresented {
            AppView()
        } else {
            SplashScreenView(ispresented: $isSplashViewpresented)
        }
    }
}

#Preview {
    ContainerView()
}
