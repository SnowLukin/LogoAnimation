//
//  SpikesShape.swift
//  LogoAnimation
//
//  Created by Snow Lukin on 05.03.2022.
//

import SwiftUI

struct SpikesShape: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            
            SpikeOne(width: size, height: size)
            SpikeTwo(width: size, height: size)
            SpikeThree(width: size, height: size)
            SpikeFour(width: size, height: size)
            SpikeFive(width: size, height: size)
            SpikeSix(width: size, height: size)
        }
    }
}

struct SpikesShape_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            SpikesShape()
                .frame(width: 300, height: 300)
        }
    }
}
