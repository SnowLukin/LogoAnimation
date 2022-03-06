//
//  SnowflakeLeavePartTwo.swift
//  LogoAnimation
//
//  Created by Snow Lukin on 05.03.2022.
//

import SwiftUI

struct SnowflakeLeavePartTwo: InsettableShape {
    let width: CGFloat
    let height: CGFloat
    var insetAmount: CGFloat = 0
    
    func path(in rect: CGRect) -> Path {
        let size = min(width, height)
        let closeLine = size * 0.1
        let farLine = size * 0.9
        let middleLine = size / 2
        var path = Path()
        path.move(to: CGPoint(x: farLine - middleLine / 4, y: closeLine + 1.35 * middleLine))
        path.addLine(to: CGPoint(x: closeLine + middleLine / 4, y: closeLine + 1.35 * middleLine))
        path.addLine(to: CGPoint(x: farLine - middleLine / 4, y: closeLine + middleLine * 0.3))
        return path
    }
    
    func inset(by amount: CGFloat) -> some InsettableShape {
        var shape = self
        shape.insetAmount += amount
        return shape
    }
}

struct SnowflakeLeavePartTwo_Previews: PreviewProvider {
    static var previews: some View {
        SnowflakeLeavePartTwo(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
}
