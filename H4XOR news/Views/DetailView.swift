//
//  DetailView.swift
//  H4XOR news
//
//  Created by D i on 19.09.2023.
//

import SwiftUI


struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
        }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "htttps://www.google.com")
    }
}

