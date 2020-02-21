part of openapi.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = Client();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _regList = RegExp(r'^List<(.*)>$');
  final _regMap = RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath = "https://vision.googleapis.com"}) {
    // Setup authentications (key: authentication name, value: authentication).
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'AnnotateImageRequest':
          return AnnotateImageRequest.fromJson(value);
        case 'AnnotateImageRequest1':
          return AnnotateImageRequest1.fromJson(value);
        case 'AnnotateImageResponse':
          return AnnotateImageResponse.fromJson(value);
        case 'AnnotateImageResponse1':
          return AnnotateImageResponse1.fromJson(value);
        case 'BatchAnnotateImagesResponse':
          return BatchAnnotateImagesResponse.fromJson(value);
        case 'BatchAnnotateImagesResponse1':
          return BatchAnnotateImagesResponse1.fromJson(value);
        case 'BoundingPoly':
          return BoundingPoly.fromJson(value);
        case 'BoundingPoly1':
          return BoundingPoly1.fromJson(value);
        case 'Feature':
          return Feature.fromJson(value);
        case 'Feature1':
          return Feature1.fromJson(value);
        case 'GroupedResult':
          return GroupedResult.fromJson(value);
        case 'GroupedResult1':
          return GroupedResult1.fromJson(value);
        case 'Image':
          return Image.fromJson(value);
        case 'Image1':
          return Image1.fromJson(value);
        case 'ImageContext':
          return ImageContext.fromJson(value);
        case 'ImageContext1':
          return ImageContext1.fromJson(value);
        case 'ImageSource':
          return ImageSource.fromJson(value);
        case 'ImageSource1':
          return ImageSource1.fromJson(value);
        case 'InlineObject':
          return InlineObject.fromJson(value);
        case 'KeyValue':
          return KeyValue.fromJson(value);
        case 'KeyValue1':
          return KeyValue1.fromJson(value);
        case 'ObjectAnnotation':
          return ObjectAnnotation.fromJson(value);
        case 'ObjectAnnotation1':
          return ObjectAnnotation1.fromJson(value);
        case 'Product':
          return Product.fromJson(value);
        case 'Product1':
          return Product1.fromJson(value);
        case 'ProductSearchParams':
          return ProductSearchParams.fromJson(value);
        case 'ProductSearchParams1':
          return ProductSearchParams1.fromJson(value);
        case 'ProductSearchResullts':
          return ProductSearchResullts.fromJson(value);
        case 'ProductSearchResullts1':
          return ProductSearchResullts1.fromJson(value);
        case 'Result':
          return Result.fromJson(value);
        case 'Result1':
          return Result1.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _regList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _regMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } on Exception catch (e, stack) {
      throw ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String json, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return json;

    var decodedJson = jsonDecode(json);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams
      .where((p) => p.value != null)
      .map((p) => '${p.name}=${Uri.encodeQueryComponent(p.value)}');

    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        case "HEAD":
          return client.head(url, headers: headerParams);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  T getAuthentication<T extends Authentication>(String name) {
    var authentication = _authentications[name];

    return authentication is T ? authentication : null;
  }
}