//
// Created by yizhou on 22/12/2023.
//

import Foundation

struct IStudentProfile: Codable {
    let number: String
    let name: String
    let school: String
    let majority: String
    
    private enum CodingKeys: String, CodingKey {
        case number = "XH"
        case name = "XM"
        case school = "DWMC"
        case majority = "ZYMC"
    }
}
