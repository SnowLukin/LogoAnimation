//
//  SnowflakeMiddleCircle.swift
//  LogoAnimation
//
//  Created by Snow Lukin on 05.03.2022.
//

import SwiftUI

struct SnowflakeMiddleCircle: View {
    var body: some View {
        GeometryReader { geo in
            
            let width = geo.size.width
            let height = geo.size.height
            let size = min(width, height)
            
            Circle()
                .strokeBorder(.blue, lineWidth: size / 4)
            Circle()
                .strokeBorder(.white, lineWidth: size / 4)
                .frame(width: size / 1.03, height: size / 1.03)
            Circle()
                .strokeBorder(.blue, lineWidth: size / 4)
                .frame(width: size / 1.05, height: size / 1.05)
            Circle()
                .strokeBorder(.white, lineWidth: size / 4)
                .frame(width: size / 1.08, height: size / 1.08)
        }
    }
}

struct SnowflakeMiddleCircle_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            SnowflakeMiddleCircle()
                .frame(width: 300, height: 300)
        }
    }
}
