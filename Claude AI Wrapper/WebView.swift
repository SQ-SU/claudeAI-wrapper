//
//  SwiftUIView.swift
//  Claude AI Wrapper
//
//  Created by Siqi Su on 06/03/2024.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL
       
       func makeUIView(context: Context) -> WKWebView {
           let webView = WKWebView()
           webView.navigationDelegate = context.coordinator
           webView.load(URLRequest(url: url))
           return webView
       }
       
       func updateUIView(_ uiView: WKWebView, context: Context) {}
       
       func makeCoordinator() -> Coordinator {
           Coordinator()
       }
       
       class Coordinator: NSObject, WKNavigationDelegate {
           func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
               if navigationAction.targetFrame == nil {
                   // Open the link in a new window or tab
                   webView.load(navigationAction.request)
               }
               decisionHandler(.allow)
           }
       }
}



#Preview {
    if let url = URL(string: "https://claude.ai/chats") {
                WebView(url: url)
            } else {
                Text("Invalid URL")
            }
//    WebView(url: URL("https://claude.ai/chats"))
}
