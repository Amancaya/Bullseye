//
//  ContentView.swift
//  Bullseye
//
//  Created by Amancaya Iriarte on 5/12/22.
//

import SwiftUI

struct ContentView: View {
  
  //important app state when @State
  //A good practice is make it private
  
  @State private var alertIsVisible: Bool = false
  @State private var sliderValue: Double = 50.0
  
  var body: some View {
      VStack {
        Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
          .fontWeight(.bold)
          .kerning(2.0)
          .multilineTextAlignment(.center)
          .lineSpacing(4.0)
          .font(.footnote)
        
        Text("89")
          .kerning(-1.0)
          .fontWeight(.black)
          .font(.largeTitle)
        
        HStack {
          
          Text("1")
            .fontWeight(.bold)
            .font(.body)
          
          Slider(value: self.$sliderValue, in: 1.0...100.0)
          
          Text("100")
            .fontWeight(.bold)
            .font(.body)
        }
        Button(action: {
          self.alertIsVisible = true
        }) {
          Text("Hit me")
        }.alert(
          "Hello there!",
          isPresented: $alertIsVisible) {
            Button("Awwsome!") {}
          } message: {
            let roundedVlue = Int(self.sliderValue.rounded())
            Text("My first pop-up \(roundedVlue)")
          }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
