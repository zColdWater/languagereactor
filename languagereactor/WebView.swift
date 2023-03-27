//
//  WebView.swift
//  languagereactor
//
//  Created by Henry Zhu on 2023/3/27.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let htmlFileName: String

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.navigationDelegate = context.coordinator
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = Bundle.main.url(forResource: htmlFileName, withExtension: "html") {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }

    func makeCoordinator() -> Coordinator {
        Coordinator()
    }

    class Coordinator: NSObject, WKNavigationDelegate {
        // 如果需要，可以实现WKNavigationDelegate的方法
    }
}

