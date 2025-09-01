//
//  RotatedBadge.swift
//  LandmarksTutorial
//
//  Created by 박서인 on 9/1/25.
//

import SwiftUI

struct RotatedBadge: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotatedBadge(angle: Angle(degrees: 5))
}
