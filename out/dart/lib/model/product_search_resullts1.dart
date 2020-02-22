part of openapi.api;

class ProductSearchResullts1 {
  
  String indexTime = null;
  
  List<ProductSearchResult1> results = [];
  
  List<GroupedResult1> productGroupedResults = [];
  ProductSearchResullts1();

  @override
  String toString() {
    return 'ProductSearchResullts1[indexTime=$indexTime, results=$results, productGroupedResults=$productGroupedResults, ]';
  }

  ProductSearchResullts1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    indexTime = json['indexTime'];
    results = (json['results'] == null) ?
      null :
      ProductSearchResult1.listFromJson(json['results']);
    productGroupedResults = (json['productGroupedResults'] == null) ?
      null :
      GroupedResult1.listFromJson(json['productGroupedResults']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (indexTime != null)
      json['indexTime'] = indexTime;
    if (results != null)
      json['results'] = results;
    if (productGroupedResults != null)
      json['productGroupedResults'] = productGroupedResults;
    return json;
  }

  static List<ProductSearchResullts1> listFromJson(List<dynamic> json) {
    return json == null ? List<ProductSearchResullts1>() : json.map((value) => ProductSearchResullts1.fromJson(value)).toList();
  }

  static Map<String, ProductSearchResullts1> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProductSearchResullts1>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProductSearchResullts1.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ProductSearchResullts1-objects as value to a dart map
  static Map<String, List<ProductSearchResullts1>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ProductSearchResullts1>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ProductSearchResullts1.listFromJson(value);
       });
     }
     return map;
  }
}

