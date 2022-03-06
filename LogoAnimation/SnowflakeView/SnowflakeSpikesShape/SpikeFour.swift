//
//  SpikeFour.swift
//  LogoAnimation
//
//  Created by Snow Lukin on 06.03.2022.
//

import SwiftUI

struct SpikeFour: InsettableShape {
    let width: CGFloat
    let height: CGFloat
    var insetAmount: CGFloat = 0
    
    func path(in rect: CGRect) -> Path {
        let size = min(width, height)
        let middleLine = size / 2 - size / 6
        
        var path = Path()
        path.move(to: CGPoint(x: middleLine, y: middleLine * 1.75))
        path.addLine(to: CGPoint(x: middleLine, y: middleLine * 2.17))
        path.addLine(to: CGPoint(x: middleLine * 1.45, y: middleLine * 1.95))
        return path
    }
    
    func inset(by amount: CGFloat) -> some InsettableShape {
        var shape = self
        shape.insetAmount += amount
        return shape
    }
}

struct SpikeFour_Previews: PreviewProvider {
    static var previews: some View {
        SpikeFour(width: 300, height: 300)
    }
}
