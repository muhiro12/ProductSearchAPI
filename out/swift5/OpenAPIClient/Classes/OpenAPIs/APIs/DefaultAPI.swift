//
// DefaultAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class DefaultAPI {
    /**

     - parameter inlineObject: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postV1ImagesAnnotate(inlineObject: InlineObject? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BatchAnnotateImagesResponse1?,_ error: Error?) -> Void)) {
        postV1ImagesAnnotateWithRequestBuilder(inlineObject: inlineObject).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /v1/images:annotate
     - parameter inlineObject: (body)  (optional)
     - returns: RequestBuilder<BatchAnnotateImagesResponse1> 
     */
    open class func postV1ImagesAnnotateWithRequestBuilder(inlineObject: InlineObject? = nil) -> RequestBuilder<BatchAnnotateImagesResponse1> {
        let path = "/v1/images:annotate"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inlineObject)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<BatchAnnotateImagesResponse1>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}