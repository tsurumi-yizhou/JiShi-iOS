//
//  ChannelDao.swift
//  JiShi
//
//  Created by yizhou on 23/12/2023.
//

import Foundation
import WCDBSwift
import Factory

class ChannelDao {
    let database = Database(at: "~/jishi.db")
    func insert(channel: Channel) throws {
        try database.insert(channel, intoTable: "channels")
    }
}

extension Container {
    var channelDao: Factory<ChannelDao> {
        Factory(self) { ChannelDao() }
    }
}
