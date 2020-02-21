# DefaultAPI

All URIs are relative to *https://vision.googleapis.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postV1ImagesAnnotate**](DefaultAPI.md#postv1imagesannotate) | **POST** /v1/images:annotate | 


# **postV1ImagesAnnotate**
```swift
    open class func postV1ImagesAnnotate(inlineObject: InlineObject? = nil, completion: @escaping (_ data: BatchAnnotateImagesResponse1?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inlineObject = inline_object(requests: [AnnotateImageRequest_1(image: Image_1(content: "content_example", souce: ImageSource_1(gcsImageUri: "gcsImageUri_example", imageUri: "imageUri_example")), features: [Feature_1(type: "type_example", maxResults: 123, model: "model_example")], imageContext: ImageContext_1(languageHints: ["languageHints_example"], productSearchParams: ProductSearchParams_1(productSet: "productSet_example", productCategories: ["productCategories_example"], filter: "filter_example")))], parent: "parent_example") // InlineObject |  (optional)

DefaultAPI.postV1ImagesAnnotate(inlineObject: inlineObject) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject** | [**InlineObject**](InlineObject.md) |  | [optional] 

### Return type

[**BatchAnnotateImagesResponse1**](BatchAnnotateImagesResponse1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

