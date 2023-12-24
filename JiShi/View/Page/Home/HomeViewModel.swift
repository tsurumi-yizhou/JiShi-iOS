//
//  HomeViewModel.swift
//  JiShi
//
//  Created by yizhou on 23/12/2023.
//

import Foundation

@Observable
class HomeViewModel {
    var text = "Hello,world!"
    func change(name: String) {
        text = "Hello, \(name)!"
    }
}
