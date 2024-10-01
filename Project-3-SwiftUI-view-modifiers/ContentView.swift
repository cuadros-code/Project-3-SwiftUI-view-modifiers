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
        
        Color.blue
            .frame(width: 300, height: 200)
            .watermark(with: "Hacking with Swift")
        
        Text("Modifiers Extension")
            .titleStyle()
        
        Text("Text with modifiers")
            .modifier(TitleModifiers())
        
        CapsuleText(text: "Kevin Cuadros")
        
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

struct CapsuleText: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .padding()
            .font(.largeTitle)
            .foregroundStyle(.white)
            .background(.blue)
            .clipShape(.capsule)
    }
}


struct TitleModifiers: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.red)
            .clipShape(.rect(cornerRadius: 10))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(TitleModifiers())
    }
}

// ---------------------- //

struct Watermark: ViewModifier {
    
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black)
        }
    }
    
}

extension View {
    func watermark(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}


#Preview {
    ContentView()
}
