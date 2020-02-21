//
// GroupedResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct GroupedResult: Codable {

    public var boundingPoly: BoundingPoly1?
    public var results: [Result1]?
    public var objectAnnotations: [ObjectAnnotation1]?

    public init(boundingPoly: BoundingPoly1?, results: [Result1]?, objectAnnotations: [ObjectAnnotation1]?) {
        self.boundingPoly = boundingPoly
        self.results = results
        self.objectAnnotations = objectAnnotations
    }

}