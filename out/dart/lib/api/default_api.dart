part of openapi.api;



class DefaultApi {
  final ApiClient apiClient;

  DefaultApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> postV1ImagesAnnotateWithHttpInfo(String key, { InlineObject inlineObject }) async {
    Object postBody = inlineObject;

    // verify required params are set
    if(key == null) {
     throw ApiException(400, "Missing required param: key");
    }

    // create path and map variables
    String path = "/v1/images:annotate".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "key", key));

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  /// 
  Future<BatchAnnotateImagesResponse1> postV1ImagesAnnotate(String key, { InlineObject inlineObject }) async {
    Response response = await postV1ImagesAnnotateWithHttpInfo(key,  inlineObject: inlineObject );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'BatchAnnotateImagesResponse1') as BatchAnnotateImagesResponse1;
    } else {
      return null;
    }
  }

}
