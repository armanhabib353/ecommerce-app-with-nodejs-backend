import 'dart:convert';

class User {
  final String id;
  final String fullName;
  final String email;
  final String state;
  final String city;
  final String locality;
  final String password;

  User(
      {required this.id,
      required this.fullName,
      required this.email,
      required this.state,
      required this.city,
      required this.locality,
      required this.password});

  // Serialization: Convert User object to a MAP
// Map: a map is a collection of key-value pairs
// why: converting to a map is an intermediate step that makes it easier to serialize

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "id": id,
      "fullName": fullName,
      "email": email,
      "state": state,
      "city": city,
      "locality": locality,
      "password": password,
    };
  }

  // serialization: convert Map to a Json String
String toJson() => json.encode(toMap());
  
  // Deserialization: convert a map to a user object
factory User.fromMap(Map<String, dynamic>map) {
  return User(id: map['_id'] as String? ??"" ,
    fullName: map['fullName'] as String? ??"" ,
    email: map['email'] as String? ??"" ,
    state: map['state'] as String? ??"" ,
    city: map['city'] as String? ??"" ,
    locality: map['locality'] as String? ??"" ,
    password: map['password'] as String? ??"" ,
  );
}

factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);


}
