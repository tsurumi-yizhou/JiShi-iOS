//
//  ArticleDao.swift
//  JiShi
//
//  Created by yizhou on 23/12/2023.
//

import Foundation
import WCDBSwift
import Factory

class ArticleDao {
    let database = Database(at: "~/jishi.db")
    func insert(article: Article) throws {
        try database.insert(article, intoTable: "articles")
    }
}

extension Container {
    var articleDao: Factory<ArticleDao> {
        Factory(self) { ArticleDao() }
    }
}
