//
//  SpikeTwo.swift
//  LogoAnimation
//
//  Created by Snow Lukin on 05.03.2022.
//

import SwiftUI

struct SpikeTwo: InsettableShape {
    let width: CGFloat
    let height: CGFloat
    var insetAmount: CGFloat = 0
    
    func path(in rect: CGRect) -> Path {
        let size = min(width, height)
        let middleLine = size / 2 - size / 6
        
        var path = Path()
        path.move(to: CGPoint(x: middleLine * 2, y: middleLine / 1.2))
        path.addLine(to: CGPoint(x: middleLine * 2, y: middleLine * 1.25))
        path.addLine(to: CGPoint(x: middleLine * 1.55, y: middleLine * 1.05))
        return path
    }
    
    func inset(by amount: CGFloat) -> some InsettableShape {
        var shape = self
        shape.insetAmount += amount
        return shape
    }
}

struct SpikeTwo_Previews: PreviewProvider {
    static var previews: some View {
        SpikeTwo(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
}
