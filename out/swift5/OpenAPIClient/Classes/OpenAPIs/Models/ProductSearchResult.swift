//
// ProductSearchResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct ProductSearchResult: Codable {

    public var product: Product1?
    public var score: Double?
    public var image: String?

    public init(product: Product1?, score: Double?, image: String?) {
        self.product = product
        self.score = score
        self.image = image
    }

}
