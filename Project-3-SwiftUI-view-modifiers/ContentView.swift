//
//  ContentView.swift
//  Project-3-SwiftUI-view-modifiers
//
//  Created by Kevin Cuadros on 28/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.teal)
    }
}

#Preview {
    ContentView()
}
