//
// ImageContext.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct ImageContext: Codable {

    public var latLongRect: Any?
    public var languageHints: [String]?
    public var cropHintsParams: Any?
    public var productSearchParams: ProductSearchParams1?
    public var webDetectionParams: Any?

    public init(latLongRect: Any?, languageHints: [String]?, cropHintsParams: Any?, productSearchParams: ProductSearchParams1?, webDetectionParams: Any?) {
        self.latLongRect = latLongRect
        self.languageHints = languageHints
        self.cropHintsParams = cropHintsParams
        self.productSearchParams = productSearchParams
        self.webDetectionParams = webDetectionParams
    }

}