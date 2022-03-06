//
//  SnowflakeSpikes.swift
//  LogoAnimation
//
//  Created by Snow Lukin on 05.03.2022.
//

import SwiftUI

struct SnowflakeSpikes: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            SpikesShape()
                .frame(width: width, height: height)
                .foregroundColor(.white)
            SpikesShape()
                .frame(width: width / 1.01, height: height / 1.01)
                .foregroundColor(.blue)
            SpikesShape()
                .frame(width: width / 1.02, height: height / 1.02)
                .foregroundColor(.white)
        }
    }
}

struct SnowflakeSpikes_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            SnowflakeSpikes()
                .frame(width: 300, height: 300)
        }
    }
}
