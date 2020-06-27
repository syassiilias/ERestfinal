import 'dart:convert';

List<Comments> commentsFromJson(String str) => List<Comments>.from(json.decode(str).map((x) => Comments.fromMap(x)));

String commentsToJson(List<Comments> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Comments {
  String id;
  String title;
  String texto;
  String name;
  String rating;
  String id_restaurant;
  String id_user;

  Comments({
    this.id,
    this.title,
    this.texto,
    this.name,
    this.rating,
    this.id_restaurant,
    this.id_user,
  });

  factory Comments.fromMap(Map<String, dynamic> json) => Comments(
    id: json["id"],
    title: json["title"],
    texto: json["texto"],
    name: json["name"],
    rating: json["rating"],
    id_restaurant: json["id_restaurant"],
    id_user: json["id_user"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "texto": texto,
    "name": name,
    "rating": rating,
    "id_restaurant": id_restaurant,
    "id_user":id_user,
  };
}
