part of openapi.api;

class ProductSearchResullts {
  
  String indexTime = null;
  
  List<ProductSearchResult1> results = [];
  
  List<GroupedResult1> productGroupedResults = [];
  ProductSearchResullts();

  @override
  String toString() {
    return 'ProductSearchResullts[indexTime=$indexTime, results=$results, productGroupedResults=$productGroupedResults, ]';
  }

  ProductSearchResullts.fromJson(Map<String, dynamic> json) {
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

  static List<ProductSearchResullts> listFromJson(List<dynamic> json) {
    return json == null ? List<ProductSearchResullts>() : json.map((value) => ProductSearchResullts.fromJson(value)).toList();
  }

  static Map<String, ProductSearchResullts> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProductSearchResullts>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProductSearchResullts.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ProductSearchResullts-objects as value to a dart map
  static Map<String, List<ProductSearchResullts>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ProductSearchResullts>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ProductSearchResullts.listFromJson(value);
       });
     }
     return map;
  }
}

