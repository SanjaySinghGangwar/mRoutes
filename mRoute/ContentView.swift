//
//  ContentView.swift
//  mRoute
//
//  Created by Sanjay on 11/07/23.
//

import SwiftUI
import FirebaseDatabase

struct ContentView: View {
    
    let items: [Item] = [.item1, .item2, .item3, .item4, .item5, .item6, .item7]
    @StateObject private var firebaseManager = FirebaseManager()
    
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
                                        .padding(10)
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
            }.onAppear{
                print("View appeared!")
                //firebaseManager.makeFirebaseCall()
            }
            .navigationTitle("mRoutes")
        }
    }
}


class FirebaseManager : ObservableObject {
  @Published var result : String?

  func makeFirebaseCall() {
      print("SANJAY")
    //make your Firebase data call here -- plenty of examples exist on how to do this, which is not SwiftUI or UIKit specific. When the Firebase call returns, set the returned value to your @Published property.
       //self.result = //the result of my firebase call
      let ref = Database.database().reference()
      ref.child("mIne").child("HomePage").observe(.value) { snapshot in
          print(snapshot)
      }
    }
  }
