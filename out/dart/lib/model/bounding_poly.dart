part of openapi.api;

class BoundingPoly {
  
  Object vertices = null;
  
  Object normalizedVertices = null;
  BoundingPoly();

  @override
  String toString() {
    return 'BoundingPoly[vertices=$vertices, normalizedVertices=$normalizedVertices, ]';
  }

  BoundingPoly.fromJson(Map<String, dynamic> json) {
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

  static List<BoundingPoly> listFromJson(List<dynamic> json) {
    return json == null ? List<BoundingPoly>() : json.map((value) => BoundingPoly.fromJson(value)).toList();
  }

  static Map<String, BoundingPoly> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BoundingPoly>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BoundingPoly.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BoundingPoly-objects as value to a dart map
  static Map<String, List<BoundingPoly>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<BoundingPoly>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = BoundingPoly.listFromJson(value);
       });
     }
     return map;
  }
}

