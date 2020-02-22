part of openapi.api;

class ProductSearchResult1 {
  
  Product1 product = null;
  
  num score = null;
  
  String image = null;
  ProductSearchResult1();

  @override
  String toString() {
    return 'ProductSearchResult1[product=$product, score=$score, image=$image, ]';
  }

  ProductSearchResult1.fromJson(Map<String, dynamic> json) {
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

  static List<ProductSearchResult1> listFromJson(List<dynamic> json) {
    return json == null ? List<ProductSearchResult1>() : json.map((value) => ProductSearchResult1.fromJson(value)).toList();
  }

  static Map<String, ProductSearchResult1> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProductSearchResult1>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProductSearchResult1.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ProductSearchResult1-objects as value to a dart map
  static Map<String, List<ProductSearchResult1>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ProductSearchResult1>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ProductSearchResult1.listFromJson(value);
       });
     }
     return map;
  }
}

