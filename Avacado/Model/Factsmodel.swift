//
//  Factsmodel.swift
//  Avacado
//
//  Created by Sohan Maurya on 10/07/24.
//

import Foundation

struct Fact : Identifiable {
    var id = UUID()
    var image : String
    var content : String
}
