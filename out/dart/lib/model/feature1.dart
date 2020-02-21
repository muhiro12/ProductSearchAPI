part of openapi.api;

class Feature1 {
  
  String type = null;
  
  num maxResults = null;
  
  String model = null;
  Feature1();

  @override
  String toString() {
    return 'Feature1[type=$type, maxResults=$maxResults, model=$model, ]';
  }

  Feature1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    maxResults = json['maxResults'];
    model = json['model'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['type'] = type;
    if (maxResults != null)
      json['maxResults'] = maxResults;
    if (model != null)
      json['model'] = model;
    return json;
  }

  static List<Feature1> listFromJson(List<dynamic> json) {
    return json == null ? List<Feature1>() : json.map((value) => Feature1.fromJson(value)).toList();
  }

  static Map<String, Feature1> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Feature1>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Feature1.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Feature1-objects as value to a dart map
  static Map<String, List<Feature1>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Feature1>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Feature1.listFromJson(value);
       });
     }
     return map;
  }
}

