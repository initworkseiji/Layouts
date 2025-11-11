//
//  ContentView.swift
//  Layouts
//
//  Created by 内野英治 on 2025/11/11.
//

import SwiftUI

struct ContentView: View {
    
    @State private var messageString = "When the Genius Bar Needs Help, They Call You!"
    
    var body: some View {
        VStack {
            Text("Awesome!")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(.indigo)

            
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
            Rectangle()
                .frame(height: 0)
                .background(.indigo)
        }
    }
}

#Preview {
    ContentView()
}
