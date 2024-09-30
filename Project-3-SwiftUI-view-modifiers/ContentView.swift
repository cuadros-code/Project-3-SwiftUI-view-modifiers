//
//  ContentView.swift
//  Project-3-SwiftUI-view-modifiers
//
//  Created by Kevin Cuadros on 28/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Button("Hello, world!") {
//            print(type(of: self.body))
//        }
//        .background(.red)
//        .frame(width: 200, height: 200)
        Text("Hello, world!")
            .padding()
            .background(.red)
            .padding()
            .background(.blue)
            .padding()
            .background(.green)
            .padding()
            .background(.yellow)
    }
}

#Preview {
    ContentView()
}
