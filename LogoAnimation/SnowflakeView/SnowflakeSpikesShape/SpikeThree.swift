//
//  SpikeThree.swift
//  LogoAnimation
//
//  Created by Snow Lukin on 05.03.2022.
//

import SwiftUI

struct SpikeThree: InsettableShape {
    let width: CGFloat
    let height: CGFloat
    var insetAmount: CGFloat = 0
    
    func path(in rect: CGRect) -> Path {
        let size = min(width, height)
        let middleLine = size / 2 - size / 6
        
        var path = Path()
        path.move(to: CGPoint(x: middleLine * 2.06, y: middleLine * 1.7))
        path.addLine(to: CGPoint(x: middleLine * 2.45, y: middleLine * 1.5))
        path.addLine(to: CGPoint(x: middleLine * 2.056, y: middleLine * 1.3))
        return path
    }
    
    func inset(by amount: CGFloat) -> some InsettableShape {
        var shape = self
        shape.insetAmount += amount
        return shape
    }
}

struct SpikeThree_Previews: PreviewProvider {
    static var previews: some View {
        SpikeThree(width: 300, height: 300)
    }
}
