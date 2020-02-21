//
// ImageSource.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct ImageSource: Codable {

    public var gcsImageUri: String?
    public var imageUri: String?

    public init(gcsImageUri: String?, imageUri: String?) {
        self.gcsImageUri = gcsImageUri
        self.imageUri = imageUri
    }

}