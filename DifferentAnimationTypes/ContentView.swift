//
//  ContentView.swift
//  DifferentAnimationTypes
//
//  Created by Ramill Ibragimov on 12.09.2020.
//

import SwiftUI

struct AnimationView: View {
    @State private var width: CGFloat = 300
    var animation: Animation
    
    var body: some View {
        Rectangle()
            .foregroundColor(.green)
            .frame(width: width, height: 50)
            .onAppear() {
                withAnimation(animation.repeatForever()) {
                    width = 0
                }
            }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            AnimationView(animation: .easeIn)
            AnimationView(animation: .easeOut)
            AnimationView(animation: .easeInOut)
            AnimationView(animation: .linear)
            AnimationView(animation: .default)
            AnimationView(animation: .spring())
            AnimationView(animation: .interactiveSpring())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
