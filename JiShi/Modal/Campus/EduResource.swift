//
// Created by yizhou on 22/12/2023.
//

import Foundation

struct EduResource: Codable {
    let selector: String
    let id: String
    let title: String
    let mod: String
    let type: String
}

struct Control: Codable {
    let name: String
    let url: String?
}

struct Model: Codable {
    let controls: [Control]
}

struct EduNode: Codable {
    let models: [Model]
}
