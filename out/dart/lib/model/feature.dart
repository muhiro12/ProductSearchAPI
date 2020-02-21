part of openapi.api;

class Feature {
  
  String type = null;
  
  num maxResults = null;
  
  String model = null;
  Feature();

  @override
  String toString() {
    return 'Feature[type=$type, maxResults=$maxResults, model=$model, ]';
  }

  Feature.fromJson(Map<String, dynamic> json) {
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

  static List<Feature> listFromJson(List<dynamic> json) {
    return json == null ? List<Feature>() : json.map((value) => Feature.fromJson(value)).toList();
  }

  static Map<String, Feature> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Feature>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Feature.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Feature-objects as value to a dart map
  static Map<String, List<Feature>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Feature>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Feature.listFromJson(value);
       });
     }
     return map;
  }
}

