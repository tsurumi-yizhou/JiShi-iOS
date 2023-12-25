//
// Created by yizhou on 22/12/2023.
//

import Foundation

struct ClassDetailCourseData: Codable {
    var imageUrl: String
    var name: String
    var id: Int
    enum CodingKeys: String, CodingKey {
        case imageUrl = "imageurl"
        case name = "name"
        case id = "id"
    }
}

struct ClassDetailCourse: Codable {
    var data: [ClassDetailCourseData]
}

struct ClassDetailData: Codable {
    var studentCount: Int
    var name: String
    var creatorUserId: String
    var course: ClassDetailCourse
    var courseId: Int
    enum CodingKeys: String, CodingKey {
        case studentCount = "studentcount"
        case name = "name"
        case creatorUserId = "creatoruserid"
        case course = "course"
        case courseId = "courseid"
    }
}

struct ClassDetail: Codable {
    var result: Int
    var message: String
    var data: ClassDetailData
    
    enum CodingKeys: String, CodingKey {
        case result = "result"
        case message = "msg"
        case data = "data"
    }
}
