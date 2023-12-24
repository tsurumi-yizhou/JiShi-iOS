//
// Created by yizhou on 22/12/2023.
//

import Foundation

struct Exam: Codable {
    
    let classroom: String
    let datetime: String
    let discipline: String
    let zone: String
    let tips: String
    let seat: String
    let useApk: String
    let toKnow: String
    let examName: String
    let examTips: String
    let platform: String
    let term: String
    let date: String
    let exam: String
    let uuid: String
    
    private enum CodingKeys: String, CodingKey {
        case classroom = "JASMC"
        case datetime = "KSSJMS"
        case discipline = "TSYYDM_DISPLAY"
        case zone = "XXXQDM_DISPLAY"
        case tips = "SFXSKS_DISPLAY"
        case seat = "ZWH"
        case useApk = "SFXYAPKS_DISPLAY"
        case toKnow = "BZ"
        case examName = "KSMC"
        case examTips = "SFXSKS"
        case platform = "PTHYH"
        case term = "XNXQDM_DISPLAY"
        case date = "KSRQ"
        case exam = "KCM"
        case uuid = "KCH"
    }
}

struct ExamData: Codable {
    let cxxsksap: EduWrapper<Exam>
}

struct EduExamResult: Codable {
    let code: String
    let datas: ExamData
}
