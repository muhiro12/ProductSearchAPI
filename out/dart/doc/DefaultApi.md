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
> BatchAnnotateImagesResponse1 postV1ImagesAnnotate(inlineObject)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: APIKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('APIKey').apiKeyPrefix = 'Bearer';

var api_instance = DefaultApi();
var inlineObject = InlineObject(); // InlineObject | 

try { 
    var result = api_instance.postV1ImagesAnnotate(inlineObject);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->postV1ImagesAnnotate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject** | [**InlineObject**](InlineObject.md)|  | [optional] 

### Return type

[**BatchAnnotateImagesResponse1**](BatchAnnotateImagesResponse1.md)

### Authorization

[APIKey](../README.md#APIKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

