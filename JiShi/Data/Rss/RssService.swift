//
//  RssService.swift
//  JiShi
//
//  Created by yizhou on 23/12/2023.
//

import Foundation
import Factory

class RssService {
    @Injected(\.channelDao) private var channelDao
    @Injected(\.articleDao) private var articleDao
    @Injected(\.httpClient) private var httpClient
    
}

extension Container {
    var rssService: Factory<RssService> {
        Factory(self) { RssService() }
    }
}
