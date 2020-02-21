part of openapi.api;

class KeyValue {
  
  String key = null;
  
  String value = null;
  KeyValue();

  @override
  String toString() {
    return 'KeyValue[key=$key, value=$value, ]';
  }

  KeyValue.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    key = json['key'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (key != null)
      json['key'] = key;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<KeyValue> listFromJson(List<dynamic> json) {
    return json == null ? List<KeyValue>() : json.map((value) => KeyValue.fromJson(value)).toList();
  }

  static Map<String, KeyValue> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, KeyValue>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = KeyValue.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of KeyValue-objects as value to a dart map
  static Map<String, List<KeyValue>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<KeyValue>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = KeyValue.listFromJson(value);
       });
     }
     return map;
  }
}

