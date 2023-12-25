//
// Created by yizhou on 22/12/2023.
//

import Foundation

struct LessonListCurriculum: Codable {
    var fid: Int
    var realCurrentWeek: Int
    var courseTypeName: String
    var earlyMorningTime: String
    var firstWeekDateReal: Int64
    var userFid: Int
    var uuid: String
    var sectionTime: String
    var puid: Int
    var earlyMorningSection: String
    var lessonLength: Int
    var curriculumCount: Int
    var morningTime: String
    var schoolYear: String
    var currentWeek: Int
    var id: Int
    var isHasEduLesson: Int
    var afternoonTime: String
    var existMaxLength: Int
    var morningSection: String
    var getLessonFromCache: Int
    var maxWeek: Int
    var updateTime: Int64
    var sort: Int
    var userName: String
    var firstWeekDate: Int64
    var insertTime: Int64
    var breakTime: String
    var eveningSection: String
    var afternoonSection: String
    var eveningTime: String
    var semester: Int
    var maxLength: Int
    var lessonTimeConfigArray: [String]
}

struct LessonListData: Codable {
    var curriculum: LessonListCurriculum
    var lessonArray: [String]
}

struct LessonList: Codable {
    var result: Int
    var msg: String
    var data: LessonListData
}
