//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by haoshuai on 2020/11/18.
//

import SwiftUI

struct ContentView: View {
    var landmark: Landmark
    var body: some View {
        
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height:300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()
        }
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(landmark: landmarkData[0])
    }
}
