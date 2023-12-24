//
// Created by yizhou on 22/12/2023.
//

import Foundation

struct License: Codable {
    let key: String
    let name: String
    let spx_id: String
    let url: String
}

struct Repository: Codable {
    let name: String
    let full_name: String
    let html_url: String
    let description: String
    let contributors_url: String
    let notifications_url: String
    let homepage: String
    let license: License
}
