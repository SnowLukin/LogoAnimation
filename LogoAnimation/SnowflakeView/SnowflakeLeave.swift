//
//  SnowflakeLeave.swift
//  LogoAnimation
//
//  Created by Snow Lukin on 04.03.2022.
//

import SwiftUI

struct SnowflakeLeave: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            SnowflakeLeaveShape()
                .frame(width: width, height: height)
                .foregroundColor(.blue)
            SnowflakeLeaveShape()
                .frame(width: width / 1.03, height: height / 1.03)
                .foregroundColor(.white)
            SnowflakeLeaveShape()
                .frame(width: width / 1.05, height: height / 1.05)
                .foregroundColor(.blue)
            SnowflakeLeaveShape()
                .frame(width: width / 1.08, height: height / 1.08)
                .foregroundColor(.white)
        }
    }
}

struct SnowflakeLeave_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            SnowflakeLeave()
                .frame(width: 300, height: 300)
        }
    }
}
