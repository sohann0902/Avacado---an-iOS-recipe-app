//
//  HeaderModel.swift
//  Avacado
//
//  Created by Sohan Maurya on 09/07/24.
//

import Foundation

struct Header : Identifiable {
    var id = UUID()
    var image : String
    var headline : String
    var subheadline : String
}
