//
//  Item.swift
//  mRoute
//
//  Created by Sanjay Gangwar on 11/07/23.
//

import Foundation

enum Item {
    case item1
    case item2
    
    
    var label: String {
        switch self {
        case .item1:
            return "Firebase"
        case .item2:
            return "Play Console"
            
        }
    }
    
    var icon: String {
        switch self {
        case .item1:
            return "https://cdn.icon-icons.com/icons2/2107/PNG/512/file_type_firebase_icon_130606.png"
        case .item2:
            return "https://play-lh.googleusercontent.com/4_RW0mQ5mJhGGJVydTlQsQ0pnqAYq9UoTVm2_gElrgRM13Q02w43HPgYVaMFy4b4smmF"
            
        }
    }
    
    var link: String {
        switch self {
        case .item1:
            return "https://console.firebase.google.com/"
        case .item2:
            return "https://play.google.com/console/"
            
            
        }
    }
}
