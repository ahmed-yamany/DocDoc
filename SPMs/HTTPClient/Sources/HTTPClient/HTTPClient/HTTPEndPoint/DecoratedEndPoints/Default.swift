//
//  Default.swift
//
//
//  Created by Ahmed Yamany on 23/08/2024.
//

import Foundation

public struct DefaultHTTPEndPointDecorator: HTTPEndPoint {
    public var url: String { endPoint.url }
    public var method: HTTPMethod { endPoint.method }
    public var task: HTTPEndPointTask { endPoint.task }
    public var headers: [String: String]?
    public var timeInterval: TimeInterval { endPoint.timeInterval }
    public var encoder: JSONEncoder { endPoint.encoder }

    let endPoint: HTTPEndPoint

    public init(endPoint: HTTPEndPoint, languageProvider: @escaping @Sendable @autoclosure () async -> String) async {
        self.endPoint = endPoint

        headers = [
            "Accept": "application/json",
            "Content-Type": "application/json",
            "Accept-Language": await languageProvider(),
            "Lang": await languageProvider(),
        ].merging(endPoint.headers ?? [:]) { _, new in new }
    }
}

public extension HTTPEndPoint where Self == DefaultHTTPEndPointDecorator {
    static func `default`(endPoint: HTTPEndPoint, languageProvider: @escaping @Sendable @autoclosure () async -> String) async -> Self {
        await DefaultHTTPEndPointDecorator(endPoint: endPoint, languageProvider: await languageProvider())
    }
}
