part of openapi.api;

class Result {
  
  Product1 product = null;
  
  num score = null;
  
  String image = null;
  Result();

  @override
  String toString() {
    return 'Result[product=$product, score=$score, image=$image, ]';
  }

  Result.fromJson(Map<String, dynamic> json) {
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

  static List<Result> listFromJson(List<dynamic> json) {
    return json == null ? List<Result>() : json.map((value) => Result.fromJson(value)).toList();
  }

  static Map<String, Result> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Result>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Result.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Result-objects as value to a dart map
  static Map<String, List<Result>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Result>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Result.listFromJson(value);
       });
     }
     return map;
  }
}

