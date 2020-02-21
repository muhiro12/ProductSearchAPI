part of openapi.api;

class AnnotateImageResponse {
  
  ProductSearchResullts1 productSearchResults = null;
  AnnotateImageResponse();

  @override
  String toString() {
    return 'AnnotateImageResponse[productSearchResults=$productSearchResults, ]';
  }

  AnnotateImageResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    productSearchResults = (json['productSearchResults'] == null) ?
      null :
      ProductSearchResullts1.fromJson(json['productSearchResults']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (productSearchResults != null)
      json['productSearchResults'] = productSearchResults;
    return json;
  }

  static List<AnnotateImageResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<AnnotateImageResponse>() : json.map((value) => AnnotateImageResponse.fromJson(value)).toList();
  }

  static Map<String, AnnotateImageResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AnnotateImageResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AnnotateImageResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AnnotateImageResponse-objects as value to a dart map
  static Map<String, List<AnnotateImageResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<AnnotateImageResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = AnnotateImageResponse.listFromJson(value);
       });
     }
     return map;
  }
}

