part of openapi.api;

class ImageContext {
  
  Object latLongRect = null;
  
  List<String> languageHints = [];
  
  Object cropHintsParams = null;
  
  ProductSearchParams1 productSearchParams = null;
  
  Object webDetectionParams = null;
  ImageContext();

  @override
  String toString() {
    return 'ImageContext[latLongRect=$latLongRect, languageHints=$languageHints, cropHintsParams=$cropHintsParams, productSearchParams=$productSearchParams, webDetectionParams=$webDetectionParams, ]';
  }

  ImageContext.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    latLongRect = (json['latLongRect'] == null) ?
      null :
      Object.fromJson(json['latLongRect']);
    languageHints = (json['languageHints'] == null) ?
      null :
      (json['languageHints'] as List).cast<String>();
    cropHintsParams = (json['cropHintsParams'] == null) ?
      null :
      Object.fromJson(json['cropHintsParams']);
    productSearchParams = (json['productSearchParams'] == null) ?
      null :
      ProductSearchParams1.fromJson(json['productSearchParams']);
    webDetectionParams = (json['webDetectionParams'] == null) ?
      null :
      Object.fromJson(json['webDetectionParams']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (latLongRect != null)
      json['latLongRect'] = latLongRect;
    if (languageHints != null)
      json['languageHints'] = languageHints;
    if (cropHintsParams != null)
      json['cropHintsParams'] = cropHintsParams;
    if (productSearchParams != null)
      json['productSearchParams'] = productSearchParams;
    if (webDetectionParams != null)
      json['webDetectionParams'] = webDetectionParams;
    return json;
  }

  static List<ImageContext> listFromJson(List<dynamic> json) {
    return json == null ? List<ImageContext>() : json.map((value) => ImageContext.fromJson(value)).toList();
  }

  static Map<String, ImageContext> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ImageContext>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ImageContext.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ImageContext-objects as value to a dart map
  static Map<String, List<ImageContext>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ImageContext>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ImageContext.listFromJson(value);
       });
     }
     return map;
  }
}

