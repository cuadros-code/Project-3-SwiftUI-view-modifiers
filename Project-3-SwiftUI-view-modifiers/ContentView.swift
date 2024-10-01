//
//  ContentView.swift
//  Project-3-SwiftUI-view-modifiers
//
//  Created by Kevin Cuadros on 28/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var useRedText = false
    
    var spells: some View {
        Group {
            Text("Lumos")
            Text("Obliviate")
        }
    }
    
    @ViewBuilder var spellsList: some View {
        Text("Lumos 2 ")
        Text("Obliviate 2")
    }
    
    var body: some View {
        
        spells
        
        spellsList
        
        
        VStack {
            Text("Gryffindor")
                .font(.largeTitle)
            Text("Hufflepuff")
            Text("Ravenclaw")
            Text("Slytherin")
        }
        .font(.caption2)
        
        VStack {
            Text("Gryffindor")
                .blur(radius: 0)
            Text("Hufflepuff")
            Text("Ravenclaw")
            Text("Slytherin")
        }
        .blur(radius: 5)
        
        Button("Hello, world!") {
            useRedText.toggle()
        }
        .foregroundStyle(useRedText ? .red : .blue)
        
        
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
