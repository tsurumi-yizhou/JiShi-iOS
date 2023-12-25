//
//  Result.swift
//  JiShi
//
//  Created by yizhou on 25/12/2023.
//

import Foundation


func runCatching<T> (block: () async throws -> T) async  -> Result<T, Error> {
    do {
        let result = try await block()
        return Result.success(result)
    } catch {
        return Result.failure(error)
    }
}

func runCatching<T> (block: () throws -> T) -> Result<T, Error> {
    do {
        let result = try block()
        return Result.success(result)
    } catch {
        return Result.failure(error)
    }
}
