part of openapi.api;

class ObjectAnnotation {
  
  String mid = null;
  
  String languageCode = null;
  
  String name = null;
  
  num score = null;
  ObjectAnnotation();

  @override
  String toString() {
    return 'ObjectAnnotation[mid=$mid, languageCode=$languageCode, name=$name, score=$score, ]';
  }

  ObjectAnnotation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    mid = json['mid'];
    languageCode = json['languageCode'];
    name = json['name'];
    score = json['score'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (mid != null)
      json['mid'] = mid;
    if (languageCode != null)
      json['languageCode'] = languageCode;
    if (name != null)
      json['name'] = name;
    if (score != null)
      json['score'] = score;
    return json;
  }

  static List<ObjectAnnotation> listFromJson(List<dynamic> json) {
    return json == null ? List<ObjectAnnotation>() : json.map((value) => ObjectAnnotation.fromJson(value)).toList();
  }

  static Map<String, ObjectAnnotation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ObjectAnnotation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ObjectAnnotation.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ObjectAnnotation-objects as value to a dart map
  static Map<String, List<ObjectAnnotation>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ObjectAnnotation>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ObjectAnnotation.listFromJson(value);
       });
     }
     return map;
  }
}

