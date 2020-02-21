part of openapi.api;

class ImageContext1 {
  
  Object latLongRect = null;
  
  List<String> languageHints = [];
  
  Object cropHintsParams = null;
  
  ProductSearchParams1 productSearchParams = null;
  
  Object webDetectionParams = null;
  ImageContext1();

  @override
  String toString() {
    return 'ImageContext1[latLongRect=$latLongRect, languageHints=$languageHints, cropHintsParams=$cropHintsParams, productSearchParams=$productSearchParams, webDetectionParams=$webDetectionParams, ]';
  }

  ImageContext1.fromJson(Map<String, dynamic> json) {
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

  static List<ImageContext1> listFromJson(List<dynamic> json) {
    return json == null ? List<ImageContext1>() : json.map((value) => ImageContext1.fromJson(value)).toList();
  }

  static Map<String, ImageContext1> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ImageContext1>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ImageContext1.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ImageContext1-objects as value to a dart map
  static Map<String, List<ImageContext1>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ImageContext1>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ImageContext1.listFromJson(value);
       });
     }
     return map;
  }
}

