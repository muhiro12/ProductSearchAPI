//
// ObjectAnnotation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct ObjectAnnotation: Codable {

    public var mid: String?
    public var languageCode: String?
    public var name: String?
    public var score: Double?

    public init(mid: String?, languageCode: String?, name: String?, score: Double?) {
        self.mid = mid
        self.languageCode = languageCode
        self.name = name
        self.score = score
    }

}
