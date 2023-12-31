//
//  WebView.swift
//  H4XOR news
//
//  Created by D i on 19.09.2023.
//

import Foundation
import WebKit
import SwiftUI

//we create WebView which is represent a UIViewRepresentable
struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
        typealias UIViewType = WKWebView
    }
    
}
