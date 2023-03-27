//
//  ContentView.swift
//  languagereactor
//
//  Created by Henry Zhu on 2023/3/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        WebView(htmlFileName: "HM370_1")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
