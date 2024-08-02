//
//  ContentView.swift
//  InteractiveUIs
//
//  Created by Scholar on 25/07/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    
    var body: some View {
        // ADD CODE HERE
        VStack{
            Text(textTitle)
                .font(.title)
            
            TextField("Type your name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
                .padding()
            
            Button("Submit Name") {
                textTitle = "Hello \(name)!!!"
                
                
            //  print(name)
            }.font(.title)
                .buttonStyle(.borderedProminent)
                .tint(.green)
            

            
        } // closes vstack
        
    } // closes body
} // closes struct

#Preview {
    ContentView()
}

