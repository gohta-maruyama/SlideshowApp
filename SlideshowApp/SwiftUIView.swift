//
//  SwiftUIView.swift
//  SlideshowApp
//
//  Created by 丸山昂大 on 2021/10/28.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Image("image1").clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
