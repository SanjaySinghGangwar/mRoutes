//
//  mWebView.swift
//  mRoute
//
//  Created by Sanjay on 11/07/23.
//

import SwiftUI
import WebKit


struct mWebView: UIViewRepresentable {
    let item: Item
    @State private var isLoading = true

    func makeUIView(context: Context) -> UIView {
        let containerView = UIView()
        let webView = WKWebView()
        let activityIndicator = UIActivityIndicatorView(style: .large)
        
        // Add the web view and activity indicator to the container view
        containerView.addSubview(webView)
        containerView.addSubview(activityIndicator)
        
        // Set up constraints for the web view and activity indicator
        webView.translatesAutoresizingMaskIntoConstraints = false
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            webView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            webView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            webView.topAnchor.constraint(equalTo: containerView.topAnchor),
            webView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            activityIndicator.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            activityIndicator.centerYAnchor.constraint(equalTo: containerView.centerYAnchor)
        ])
        
        // Start the loading indicator animation
        if(isLoading){
            print("Loader Started")
            activityIndicator.startAnimating()
        }else{
            print("Loader Stopped")
            activityIndicator.stopAnimating()
        }
      
        
        // Load the web page
        let request = URLRequest(url: URL(string: item.link)!)
        webView.load(request)
        
        // Monitor the web view's loading state
        webView.navigationDelegate = context.coordinator
        
        return containerView
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        // Not needed for this example
    }
    
    // Coordinator to monitor web view's loading state
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, WKNavigationDelegate {
        let parent: mWebView
        
        init(_ parent: mWebView) {
            self.parent = parent
        }
        
        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            // Stop the loading indicator animation
            parent.isLoading = false
            
            // Print something to confirm that the loader has stopped
            print("Loader has stopped")
        }
    }
}
