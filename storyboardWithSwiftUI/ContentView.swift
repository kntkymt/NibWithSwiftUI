//
//  ContentView.swift
//  storyboardWithSwiftUI
//
//  Created by kntk on 2019/06/08.
//  Copyright © 2019 kntk. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        NavigationView {
            ScrollView(showsHorizontalIndicator: false) {
                VStack(alignment: .center) {
                    ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                        SwiftUIHogeTableView()
                            .frame(width: 355, height: 420)
                            .cornerRadius(12)
                            .shadow(radius: 8)     
                    }
                    .padding([.top, .leading, .trailing], 30.0)
                }
            }
            .navigationBarTitle(Text("Today"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
