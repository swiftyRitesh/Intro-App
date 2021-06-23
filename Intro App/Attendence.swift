//
//  Attendence.swift
//  Intro App
//
//  Created by Ritesh Sathiyamoorthi on 23/6/21.
//

import SwiftUI

struct Attendence: View {
    var body: some View {
        VStack {
            Text("Go Do Your Attendence \n  Form Ah")
                .font(.custom("idk", size: 50))
            Link("Over here", destination: URL(string: "shorturl.at/euRW7")!)
                .font(.custom("idk also", size: 50))
                .accentColor(.blue)
            
        }
    }
}

struct Attendence_Previews: PreviewProvider {
    static var previews: some View {
        Attendence()
    }
}
