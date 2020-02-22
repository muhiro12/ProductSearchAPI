part of openapi.api;

class ProductSearchParams {
  
  String productSet = null;
  
  List<String> productCategories = [];
  
  String filter = null;
  ProductSearchParams();

  @override
  String toString() {
    return 'ProductSearchParams[productSet=$productSet, productCategories=$productCategories, filter=$filter, ]';
  }

  ProductSearchParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    productSet = json['productSet'];
    productCategories = (json['productCategories'] == null) ?
      null :
      (json['productCategories'] as List).cast<String>();
    filter = json['filter'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (productSet != null)
      json['productSet'] = productSet;
    if (productCategories != null)
      json['productCategories'] = productCategories;
    if (filter != null)
      json['filter'] = filter;
    return json;
  }

  static List<ProductSearchParams> listFromJson(List<dynamic> json) {
    return json == null ? List<ProductSearchParams>() : json.map((value) => ProductSearchParams.fromJson(value)).toList();
  }

  static Map<String, ProductSearchParams> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProductSearchParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProductSearchParams.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ProductSearchParams-objects as value to a dart map
  static Map<String, List<ProductSearchParams>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ProductSearchParams>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ProductSearchParams.listFromJson(value);
       });
     }
     return map;
  }
}

