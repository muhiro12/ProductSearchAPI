part of openapi.api;

class Result1 {
  
  Product1 product = null;
  
  num score = null;
  
  String image = null;
  Result1();

  @override
  String toString() {
    return 'Result1[product=$product, score=$score, image=$image, ]';
  }

  Result1.fromJson(Map<String, dynamic> json) {
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

  static List<Result1> listFromJson(List<dynamic> json) {
    return json == null ? List<Result1>() : json.map((value) => Result1.fromJson(value)).toList();
  }

  static Map<String, Result1> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Result1>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Result1.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Result1-objects as value to a dart map
  static Map<String, List<Result1>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Result1>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Result1.listFromJson(value);
       });
     }
     return map;
  }
}

