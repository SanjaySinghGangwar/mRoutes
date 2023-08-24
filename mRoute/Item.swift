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
    case item3
    case item4
    case item5
    case item6
    
    
    var label: String {
        switch self {
        case .item1:
            return "Firebase"
        case .item2:
            return "Smart Look"
        case .item3:
            return "Play Console"
        case .item4:
            return "Samsung App Store"
        case .item5:
            return "Amazon App Store"
        case .item6:
            return "Start Up News"
            
        }
    }
    
    var icon: String {
        switch self {
        case .item1:
            return "https://cdn.icon-icons.com/icons2/2107/PNG/512/file_type_firebase_icon_130606.png"
        case .item2:
            return "https://b-new.be/wp-content/uploads/2020/08/Smartlook.png"
        case .item3:
            return "https://play-lh.googleusercontent.com/4_RW0mQ5mJhGGJVydTlQsQ0pnqAYq9UoTVm2_gElrgRM13Q02w43HPgYVaMFy4b4smmF"
        case .item4:
            return "https://static.vecteezy.com/system/resources/previews/014/018/566/non_2x/samsung-logo-on-transparent-background-free-vector.jpg"
        case .item5:
            return "https://www.freepnglogos.com/uploads/amazon-png-logo-vector/amazon-png-logo-vector-1.png"
        case .item6:
            return "https://www.freepnglogos.com/uploads/amazon-png-logo-vector/amazon-png-logo-vector-1.png"
            
        }
    }
    
    var link: String {
        switch self {
        case .item1:
            return "https://console.firebase.google.com/"
        case .item2:
            return "https://app.smartlook.com/"
        case .item3:
            return "https://play.google.com/console/"
        case .item4:
            return "https://seller.samsungapps.com/"
        case .item5:
            return "https://developer.amazon.com/"
        case .item6:
            return "https://inc42.com/buzz/"
            
            
        }
    }
}
