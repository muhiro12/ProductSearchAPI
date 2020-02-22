part of openapi.api;

class ImageContext {
  
  List<String> languageHints = [];
  
  ProductSearchParams1 productSearchParams = null;
  ImageContext();

  @override
  String toString() {
    return 'ImageContext[languageHints=$languageHints, productSearchParams=$productSearchParams, ]';
  }

  ImageContext.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    languageHints = (json['languageHints'] == null) ?
      null :
      (json['languageHints'] as List).cast<String>();
    productSearchParams = (json['productSearchParams'] == null) ?
      null :
      ProductSearchParams1.fromJson(json['productSearchParams']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (languageHints != null)
      json['languageHints'] = languageHints;
    if (productSearchParams != null)
      json['productSearchParams'] = productSearchParams;
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

