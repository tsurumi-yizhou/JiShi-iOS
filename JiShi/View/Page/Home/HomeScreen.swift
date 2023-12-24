//
//  HomeScreen.swift
//  JiShi
//
//  Created by yizhou on 23/12/2023.
//

import SwiftUI

struct HomeScreen: View {
    @State private var viewModel = HomeViewModel()
    var body: some View {
        VStack {
            Text(viewModel.text)
            Button(action: {
                viewModel.change(name: "tyz")
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
        }.padding()
    }
}

#Preview {
    HomeScreen()
}
