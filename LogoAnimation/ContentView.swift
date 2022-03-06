//
//  ContentView.swift
//  LogoAnimation
//
//  Created by Snow Lukin on 04.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var animated = false
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(alignment: .trailing) {
                HStack {
                    Spacer()
                    Button("Animate") {
                        animate()
                    }
                }
                Spacer()
                Snowflake()
                    .frame(height: UIScreen.main.bounds.width)
                    .animation(.default, value: animated)
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    private func animate() {
        animated.toggle()
    }
}
