//
//  ContentView.swift
//  Intro App
//
//  Created by Ritesh Sathiyamoorthi on 23/6/21.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.openURL) var openURL
    @State var isPresented = false
    
    let colors: [Color] = [
        Color(red: 237 / 255, green: 221 / 255, blue: 26 / 255),
        Color(red: 74 / 255, green: 186 / 255, blue: 80 / 255),
        Color(red: 30 / 255, green: 122 / 255, blue: 118 / 255),
        Color(red: 43 / 255, green: 10 / 255, blue: 116 / 255)
    ]
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(LinearGradient(
                        gradient: Gradient(colors: colors),
                        startPoint: .topLeading,
                        endPoint: .bottom))
                
            VStack {
                Text("Hello,\n I am Ritesh!")
                    //.font(.system(size: 60))
                    .font(Font.custom("Courier New", size: 50))
                    .bold()
                    .padding()
                Image("python")
                    .mask(Circle())
                
                Image("git")
                    .scaledToFit()
                    .onTapGesture {
                        openURL(URL(string: "https://github.com/swiftyRitesh?tab=repositories")!)
                    }
                Image("swiftui")
                    .cornerRadius(50)
                    .onTapGesture {
                        isPresented = true
                    }
            }
        }
        .sheet(isPresented: $isPresented){
            Attendence()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
