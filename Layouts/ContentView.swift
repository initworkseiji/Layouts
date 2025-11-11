//
//  ContentView.swift
//  Layouts
//
//  Created by 内野英治 on 2025/11/11.
//

import SwiftUI

struct ContentView: View {
    
    @State private var messageString = ""
    
    var body: some View {
        
        
        // COntents
        VStack {
            
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .padding()
                .frame(height: 150)
                .frame(maxWidth: .infinity)
            //                .border(.orange)
                .padding()
            
            Spacer()
            
            HStack {
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                }
                
                Spacer()
                
                Button("Great") {
                    messageString = "You Are Great!"
                }
            }
            .buttonStyle(.borderedProminent)
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
