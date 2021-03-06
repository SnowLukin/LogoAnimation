//
//  ContentView.swift
//  LogoAnimation
//
//  Created by Snow Lukin on 04.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isRotated = false
    @State private var pulseFirst = false
    @State private var pulseSecond = false
    @State private var showText = false
    @State private var isButtonDisabled = false
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                HStack {
                    Spacer()
                    button
                }
                Spacer()
                ZStack {
                    message
                    snowflake
                }
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
    
    private var snowflake: some View {
        Snowflake()
            .frame(width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.width / 2)
            .overlay(
                pulseCircles
            )
            .scaleEffect(isRotated ? 58 : 1)
            .rotationEffect(.degrees(isRotated ? 360 * 10 : 0))
    }
    
    private var button: some View {
        Button("Animate") {
            isButtonDisabled.toggle()
            scaleView(duration: 10)
            setText()
            setButtonState()
        }
        .disabled(isButtonDisabled)
    }
    
    private var message: some View {
        VStack {
            Text("Got Hypnotized?")
                .fontWeight(.semibold)
            Text("Now. Gimme ur money!")
                .fontWeight(.semibold)
        }
        .foregroundColor(.white)
        .font(.title)
        .opacity(showText ? 1 : 0)
    }
    
    private var pulseCircles: some View {
        ZStack {
            Circle()
                .stroke(.white)
                .scaleEffect(pulseFirst ? 2 : 0)
                .opacity(pulseFirst ? 0 : 1)
            Circle()
                .stroke(.white)
                .scaleEffect(pulseSecond ? 2 : 0)
                .opacity(pulseSecond ? 0 : 1)
        }
            .onAppear(perform: {
                animatePulse()
            })
    }
    
    private func setButtonState() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 16) {
            isButtonDisabled.toggle()
        }
    }
    
    private func setText() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 7) {
            withAnimation {
                showText.toggle()
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 12) {
            withAnimation {
                showText.toggle()
            }
        }
    }
    
    private func scaleView(duration: Double) {
        var animation = Animation.easeIn(duration: duration).repeatCount(1, autoreverses: true)
        
        withAnimation(animation) {
            isRotated.toggle()
        }
        
        animation = Animation.easeOut(duration: 6).repeatCount(1, autoreverses: true)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
            withAnimation(animation) {
                isRotated.toggle()
            }
        }
    }
    
    private func animatePulse() {
        // First pulse
        // every round 0.1s earlier
        withAnimation(Animation.linear(duration: 1.7).delay(-0.1).repeatForever(autoreverses: false)) {
            pulseFirst.toggle()
        }
        
        // Second pulse
        // start with 0.5s delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            withAnimation(Animation.linear(duration: 1.7).delay(-0.1).repeatForever(autoreverses: false)) {
                pulseSecond.toggle()
            }
        }
    }
}
