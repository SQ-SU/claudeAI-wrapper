//
//  ContentView.swift
//  Claude AI Wrapper
//
//  Created by Siqi Su on 06/03/2024.
//

import SwiftUI

struct ContentView: View {
    let webAppURL = URL(string: "https://claude.ai/chats")!
        
        var body: some View {
            WebView(url: webAppURL)
                .background(
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color(red: 240/255, green: 238/255, blue: 229/255),
                        Color(red: 248/255, green: 248/255, blue: 247/255),
//                        Color(red: 245/255, green: 244/255, blue: 239/255)
                    
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
        }
}

#Preview {
    ContentView()
}
