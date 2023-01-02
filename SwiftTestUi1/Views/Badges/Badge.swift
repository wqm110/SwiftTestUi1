//
//  Badge.swift
//  SwiftTestUi1
//
//  Created by 王庆敏 on 2023/1/2.
//

import SwiftUI

struct Badge: View {
    
    var badgeSymbols: some View {
        
        ForEach(0..<8){ index in
            
            
            RotatedBadgeSymbol(
                angle: .degrees(Double(index) / Double(8)) * 360.0)
                
        }
        .opacity(0.5)
    }
    
    
    var body: some View {
        VStack{
        ZStack{
            BadgeBackground()
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
            }
        }
        .scaledToFit()
        }
        ZStack {
           Circle().fill(.green)
           Circle().fill(.yellow).scaleEffect(0.8)
           Circle().fill(.orange).scaleEffect(0.6)
           Circle().fill(.red).scaleEffect(0.4)
        }
    }
 
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
