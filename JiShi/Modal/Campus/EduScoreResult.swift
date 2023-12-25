//
// Created by yizhou on 22/12/2023.
//

import Foundation

struct Score: Codable {
    let school: String
    let term: String
    let id: String
    let score: Double
    let grade: Double
    let name: String
    let type: String
    let weight: Double
    
    enum CodingKeys: String, CodingKey {
        case school = "KKDWDM_DISPLAY"
        case term = "XNXQDM"
        case id = "XSKCH"
        case score = "XFJD"
        case grade = "XS"
        case name = "KCM"
        case type = "KCLBDM_DISPLAY"
        case weight = "XF"
    }
}


struct ScoreData: Codable {
    let xscjcx: EduWrapper<Score>
}

struct EduScoreResult: Codable {
    let datas: ScoreData
}
