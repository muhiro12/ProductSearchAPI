part of openapi.api;

class ProductSearchParams1 {
  
  String productSet = null;
  
  List<String> productCategories = [];
  
  String filter = null;
  ProductSearchParams1();

  @override
  String toString() {
    return 'ProductSearchParams1[productSet=$productSet, productCategories=$productCategories, filter=$filter, ]';
  }

  ProductSearchParams1.fromJson(Map<String, dynamic> json) {
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

  static List<ProductSearchParams1> listFromJson(List<dynamic> json) {
    return json == null ? List<ProductSearchParams1>() : json.map((value) => ProductSearchParams1.fromJson(value)).toList();
  }

  static Map<String, ProductSearchParams1> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProductSearchParams1>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProductSearchParams1.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ProductSearchParams1-objects as value to a dart map
  static Map<String, List<ProductSearchParams1>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ProductSearchParams1>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ProductSearchParams1.listFromJson(value);
       });
     }
     return map;
  }
}

