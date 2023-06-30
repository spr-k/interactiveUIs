//
//  ContentView.swift
//  interactiveUIs
//
//  Created by Scholar on 6/22/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    
    var body: some View {
        VStack {
            Text("\(textTitle)")
                .font(.largeTitle)
            
            TextField("Tell me...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 2)
                .padding(20)
            
            Button("Submit Name") {
                textTitle = "Welcome, \(name)!"
            }
            .font(.title2)
            .buttonStyle(.bordered)
            .tint(.purple)
        } //closes vstack
    } //closes body
} //closes struct Contentview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    } //closes static var previews
} //closes the struct ContentView_Previews
