//
//  SpikeFive.swift
//  LogoAnimation
//
//  Created by Snow Lukin on 06.03.2022.
//

import SwiftUI

struct SpikeFive: InsettableShape {
    let width: CGFloat
    let height: CGFloat
    var insetAmount: CGFloat = 0
    
    func path(in rect: CGRect) -> Path {
        let size = min(width, height)
        let middleLine = size / 2 - size / 6
        var path = Path()
        path.move(to: CGPoint(x: middleLine / 1.057, y: middleLine * 1.7))
        path.addLine(to: CGPoint(x: middleLine / 1.064, y: middleLine * 1.3))
        path.addLine(to: CGPoint(x: middleLine / 1.825, y: middleLine * 1.5))
        return path
    }
    
    func inset(by amount: CGFloat) -> some InsettableShape {
        var shape = self
        shape.insetAmount += amount
        return shape
    }
}

struct SpikeFive_Previews: PreviewProvider {
    static var previews: some View {
        SpikeFive(width: 300, height: 300)
    }
}
