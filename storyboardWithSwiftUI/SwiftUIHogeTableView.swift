//
//  SwiftUIHogeTableView.swift
//  storyboardWithSwiftUI
//
//  Created by kntk on 2019/06/08.
//  Copyright © 2019 kntk. All rights reserved.
//

import SwiftUI

struct SwiftUIHogeTableView: UIViewRepresentable {
    
    func updateUIView(_ uiView: UIView, context: Context) {
        uiView.frame = CGRect(x: 0, y: 0, width: 355, height: 420)
    }
    
    func makeUIView(context: Context) -> UIView {
        HogeTableViewCell.build()
    }
}

#if DEBUG
struct SwiftUIHogeTableView_Previews : PreviewProvider {
    static var previews: some View {
        SwiftUIHogeTableView()
            .frame(width: 355, height: 420)
            .previewLayout(.sizeThatFits)
    }
}
#endif
