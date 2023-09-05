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
    case item7
    
    
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
        case .item7:
            return "Crunchbase"
            
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
            return "https://d1yjjnpx0p53s8.cloudfront.net/styles/logo-original-577x577/s3/102013/samsung.png?itok=srZLQy_r"
        case .item5:
            return "https://d1yjjnpx0p53s8.cloudfront.net/styles/logo-original-577x577/s3/012015/amazon-logo-rgb.png?itok=VaPUAQJF"
        case .item6:
            return "https://st2.depositphotos.com/6789684/12262/v/450/depositphotos_122620866-stock-illustration-illustration-of-flat-icon.jpg"
        case .item7:
            return "https://assets-global.website-files.com/59e16042ec229e00016d3a66/620eda6255fb8474b2260f6e_Slide%201%20(28).jpeg "
            
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
        case .item7:
            return "https://www.crunchbase.com/"
            
            
        }
    }
}
