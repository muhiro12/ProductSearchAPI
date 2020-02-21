part of openapi.api;

class BoundingPoly1 {
  
  Object vertices = null;
  
  Object normalizedVertices = null;
  BoundingPoly1();

  @override
  String toString() {
    return 'BoundingPoly1[vertices=$vertices, normalizedVertices=$normalizedVertices, ]';
  }

  BoundingPoly1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    vertices = (json['vertices'] == null) ?
      null :
      Object.fromJson(json['vertices']);
    normalizedVertices = (json['normalizedVertices'] == null) ?
      null :
      Object.fromJson(json['normalizedVertices']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (vertices != null)
      json['vertices'] = vertices;
    if (normalizedVertices != null)
      json['normalizedVertices'] = normalizedVertices;
    return json;
  }

  static List<BoundingPoly1> listFromJson(List<dynamic> json) {
    return json == null ? List<BoundingPoly1>() : json.map((value) => BoundingPoly1.fromJson(value)).toList();
  }

  static Map<String, BoundingPoly1> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BoundingPoly1>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BoundingPoly1.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BoundingPoly1-objects as value to a dart map
  static Map<String, List<BoundingPoly1>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<BoundingPoly1>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = BoundingPoly1.listFromJson(value);
       });
     }
     return map;
  }
}

