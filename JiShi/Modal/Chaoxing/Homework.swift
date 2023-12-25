//
// Created by yizhou on 22/12/2023.
//

import Foundation

struct HomeworkExtraInfo: Codable {
    var topicId: String
    var groupId: String
    enum CodingKeys: String, CodingKey {
        case topicId = "topicid"
        case groupId = "groupid"
    }
}

struct HomeworkActive: Codable {
    var userStatus: Int
    var nameTwo: String
    var groupId: Int
    var source: Int? = 0
    var isLook: Int
    var type: Int
    var releaseNum: Int
    var attendNum: Int
    var activeType: Int
    var logo: String
    var nameOne: String
    var startTime: Int64
    var id: Int64
    var endTime: Int64
    var status: Int
    var nameFour: String
    var extraInfo: HomeworkExtraInfo? = nil
    var otherId: String? = nil
}

struct HomeworkData: Codable {
    var duration: Int
    var activeList: [HomeworkActive]
    
    enum CodingKeys: String, CodingKey {
        case duration = "readingDuration"
        case activeList = "activeList"
    }
}

struct Homework: Codable {
    var result: Int
    var message: String
    var data: HomeworkData
    
    enum CodingKeys: String, CodingKey {
        case result = "result"
        case message = "msg"
        case data = "data"
    }
}

