part of openapi.api;

class AnnotateImageResponse1 {
  
  ProductSearchResullts1 productSearchResults = null;
  AnnotateImageResponse1();

  @override
  String toString() {
    return 'AnnotateImageResponse1[productSearchResults=$productSearchResults, ]';
  }

  AnnotateImageResponse1.fromJson(Map<String, dynamic> json) {
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

  static List<AnnotateImageResponse1> listFromJson(List<dynamic> json) {
    return json == null ? List<AnnotateImageResponse1>() : json.map((value) => AnnotateImageResponse1.fromJson(value)).toList();
  }

  static Map<String, AnnotateImageResponse1> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AnnotateImageResponse1>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AnnotateImageResponse1.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AnnotateImageResponse1-objects as value to a dart map
  static Map<String, List<AnnotateImageResponse1>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<AnnotateImageResponse1>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = AnnotateImageResponse1.listFromJson(value);
       });
     }
     return map;
  }
}

