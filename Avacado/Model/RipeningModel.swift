//
//  RipeningModel.swift
//  Avacado
//
//  Created by Sohan Maurya on 10/07/24.
//

import Foundation


struct Ripening : Identifiable {
    var id = UUID()
    var image : String
    var stage : String
    var title : String
    var description : String
    var ripeness : String
    var instruction : String
}
