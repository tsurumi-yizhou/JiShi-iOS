//
//  WelcomeScreen.swift
//  JiShi
//
//  Created by yizhou on 24/12/2023.
//

import SwiftUI

struct WelcomeScreen: View {
    @State var viewModel = WelcomeViewModel()
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    WelcomeScreen()
}
