part of openapi.api;

class Product {
  
  String name = null;
  
  String displayName = null;
  
  String description = null;
  
  String productCategory = null;
  
  List<KeyValue1> productLabels = [];
  Product();

  @override
  String toString() {
    return 'Product[name=$name, displayName=$displayName, description=$description, productCategory=$productCategory, productLabels=$productLabels, ]';
  }

  Product.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    displayName = json['displayName'];
    description = json['description'];
    productCategory = json['productCategory'];
    productLabels = (json['productLabels'] == null) ?
      null :
      KeyValue1.listFromJson(json['productLabels']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (displayName != null)
      json['displayName'] = displayName;
    if (description != null)
      json['description'] = description;
    if (productCategory != null)
      json['productCategory'] = productCategory;
    if (productLabels != null)
      json['productLabels'] = productLabels;
    return json;
  }

  static List<Product> listFromJson(List<dynamic> json) {
    return json == null ? List<Product>() : json.map((value) => Product.fromJson(value)).toList();
  }

  static Map<String, Product> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Product>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Product.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Product-objects as value to a dart map
  static Map<String, List<Product>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Product>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Product.listFromJson(value);
       });
     }
     return map;
  }
}

