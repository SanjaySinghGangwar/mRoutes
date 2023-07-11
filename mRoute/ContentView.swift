//
//  ContentView.swift
//  mRoute
//
//  Created by Sanjay on 11/07/23.
//

import SwiftUI

enum Item {
    case item1
    case item2
    case item3
    case item4
    case item5
    
    var label: String {
        switch self {
        case .item1:
            return "Firebase"
        case .item2:
            return "https://example.com/item2.jpg"
        case .item3:
            return "https://example.com/item3.jpg"
        case .item4:
            return "https://example.com/item4.jpg"
        case .item5:
            return "https://example.com/item5.jpg"
        }
    }
    
    var icon: String {
        switch self {
        case .item1:
            return "https://www.gstatic.com/mobilesdk/160503_mobilesdk/logo/2x/firebase_28dp.png"
        case .item2:
            return "https://example.com/item2.jpg"
        case .item3:
            return "https://example.com/item3.jpg"
        case .item4:
            return "https://example.com/item4.jpg"
        case .item5:
            return "https://example.com/item5.jpg"
        }
    }
    
    var link: String {
        switch self {
        case .item1:
            return "https://console.firebase.google.com/"
        case .item2:
            return "https://example.com/item2"
        case .item3:
            return "https://example.com/item3"
        case .item4:
            return "https://example.com/item4"
        case .item5:
            return "https://example.com/item5"
        }
    }
}

struct ContentView: View {
    
    let items: [Item] = [.item1, .item2, .item3, .item4, .item5]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                    ForEach(items, id: \.self) { item in
                        NavigationLink(destination: mWebView2()) {
//                            mWebView(item: item)
                            VStack {
                                AsyncImage(url: URL(string: item.icon)) { image in
                                    image

                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                } placeholder: {
                                    ProgressView()
                                }
                                
                                Text(item.label)
                                    .padding()
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("mRoutes")
        }
    }
}
