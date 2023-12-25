//
// Created by yizhou on 22/12/2023.
//

import Foundation

struct Lesson: Codable {
    let code: String
    let school: String
    let startNum: Int
    let endNum: Int
    let teacher: String
    let lesson: String
    let classroom: String?
    let building: String?
    let weekRange: String
    
    enum CodingKeys: String, CodingKey {
        case code = "ZYDM"
        case school = "DWDM_DISPLAY"
        case startNum = "KSJC"
        case endNum = "JSJC"
        case teacher = "SKJS"
        case lesson = "KCM"
        case classroom = "JASMC"
        case building = "JXLDM_DISPLAY"
        case weekRange = "ZCMC"
    }
}

struct LessonData: Codable {
    let cxxszhxqkb: EduWrapper<Lesson>
}

struct EduLessonResult: Codable {
    let datas: LessonData
}
