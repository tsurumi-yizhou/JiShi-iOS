//
// Created by yizhou on 22/12/2023.
//

import Foundation

struct Module: Codable {
    let title: String
    let range: String
    let route: String
}

struct DropMenu: Codable {
    let id: String
    let text: String
}

struct Header: Codable {
    let dropMenu: [DropMenu]
}

struct EduAppConfig: Codable {
    let appId: String
    let header: Header
    let modules: [Module]
    
    private enum CodingKeys: String, CodingKey {
        case appId = "APP_ID"
        case header = "HEADER"
        case modules = "MODULES"
    }
}

struct EduAppRole: Codable {
    let success: Int
}
