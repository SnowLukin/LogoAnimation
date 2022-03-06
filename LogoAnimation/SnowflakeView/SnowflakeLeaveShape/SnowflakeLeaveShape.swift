//
//  SnowflakeLeaveShape.swift
//  LogoAnimation
//
//  Created by Snow Lukin on 05.03.2022.
//

import SwiftUI

struct SnowflakeLeaveShape: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            SnowflakeLeavePartOne(width: width, height: height)
            SnowflakeLeavePartTwo(width: width, height: height)
            SnowflakeLeavePartThree(width: width, height: height)
            
        }
    }
}

struct SnowflakeLeaveShape_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            SnowflakeLeaveShape()
                .frame(width: 300, height: 300)
        }
    }
}
