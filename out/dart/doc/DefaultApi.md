# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://vision.googleapis.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postV1ImagesAnnotate**](DefaultApi.md#postV1ImagesAnnotate) | **POST** /v1/images:annotate | 


# **postV1ImagesAnnotate**
> BatchAnnotateImagesResponse1 postV1ImagesAnnotate(key, inlineObject)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = DefaultApi();
var key = key_example; // String | 
var inlineObject = InlineObject(); // InlineObject | 

try { 
    var result = api_instance.postV1ImagesAnnotate(key, inlineObject);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->postV1ImagesAnnotate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**|  | [default to null]
 **inlineObject** | [**InlineObject**](InlineObject.md)|  | [optional] 

### Return type

[**BatchAnnotateImagesResponse1**](BatchAnnotateImagesResponse1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

