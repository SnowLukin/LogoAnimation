//
//  Snowflake.swift
//  LogoAnimation
//
//  Created by Snow Lukin on 05.03.2022.
//

import SwiftUI

struct Snowflake: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            
            let closeLine = size * 0
            let farLine = size - size / 3
            let middleLine = size / 2 - size / 6
            
            ForEach(0..<6) { iteration in
                SnowflakeLeave()
                    .frame(width: size / 3.1, height: size / 3.1)
                    .rotationEffect(.degrees(Double(iteration) * 60))
                    .offset(
                        x: iteration > 3 ? closeLine : (1...2).contains(iteration) ? farLine : middleLine,
                        y: iteration == 0 ? closeLine : iteration == 3 ? farLine : iteration == 1 || iteration == 5 ? middleLine / 2 : middleLine + middleLine / 2
                    )
            }
            SnowflakeSpikes()
            SnowflakeMiddleCircle()
                .frame(width: size / 4, height: size / 4)
                .offset(x: middleLine * 1.13, y: middleLine * 1.12)
        }
    }
}

struct Snowflake_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            Snowflake()
                .frame(width: 300, height: 300)
        }
    }
}
