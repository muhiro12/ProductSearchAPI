part of openapi.api;

class ObjectAnnotation1 {
  
  String mid = null;
  
  String languageCode = null;
  
  String name = null;
  
  num score = null;
  ObjectAnnotation1();

  @override
  String toString() {
    return 'ObjectAnnotation1[mid=$mid, languageCode=$languageCode, name=$name, score=$score, ]';
  }

  ObjectAnnotation1.fromJson(Map<String, dynamic> json) {
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

  static List<ObjectAnnotation1> listFromJson(List<dynamic> json) {
    return json == null ? List<ObjectAnnotation1>() : json.map((value) => ObjectAnnotation1.fromJson(value)).toList();
  }

  static Map<String, ObjectAnnotation1> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ObjectAnnotation1>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ObjectAnnotation1.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ObjectAnnotation1-objects as value to a dart map
  static Map<String, List<ObjectAnnotation1>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ObjectAnnotation1>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ObjectAnnotation1.listFromJson(value);
       });
     }
     return map;
  }
}

