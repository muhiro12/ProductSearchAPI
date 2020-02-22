part of openapi.api;

class ProductSearchResult {
  
  Product1 product = null;
  
  num score = null;
  
  String image = null;
  ProductSearchResult();

  @override
  String toString() {
    return 'ProductSearchResult[product=$product, score=$score, image=$image, ]';
  }

  ProductSearchResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    product = (json['product'] == null) ?
      null :
      Product1.fromJson(json['product']);
    score = json['score'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (product != null)
      json['product'] = product;
    if (score != null)
      json['score'] = score;
    if (image != null)
      json['image'] = image;
    return json;
  }

  static List<ProductSearchResult> listFromJson(List<dynamic> json) {
    return json == null ? List<ProductSearchResult>() : json.map((value) => ProductSearchResult.fromJson(value)).toList();
  }

  static Map<String, ProductSearchResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProductSearchResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProductSearchResult.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ProductSearchResult-objects as value to a dart map
  static Map<String, List<ProductSearchResult>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ProductSearchResult>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ProductSearchResult.listFromJson(value);
       });
     }
     return map;
  }
}

