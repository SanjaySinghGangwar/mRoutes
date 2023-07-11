//
//  ContentView.swift
//  mRoute
//
//  Created by Sanjay on 11/07/23.
//

import SwiftUI

struct ContentView: View {
    
    let items: [Item] = [.item1, .item2]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                    ForEach(items, id: \.self) { item in
                        @ObservedObject var webViewModel = WebViewModel(url: item.link)
                        NavigationLink(destination: mWebView(model: webViewModel)) {
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
