//
//  CircleImage.swift
//  SwiftTestUi1
//
//  Created by 王庆敏 on 2023/1/2.
//

import SwiftUI

struct CircleImage: View {
    var image:Image
    

    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7.0)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("天安门"))
    }
}
