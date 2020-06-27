import 'dart:convert';

import '../models/home_models/restau_model.dart';
import '../models/home_models/restau_model.dart';
import 'ApiUrl.dart';
import '../models/comment.dart';
import 'package:http/http.dart' as http;

Future<List<Comments>> fetchComments(String id_restaurant) async {
  final response = await http.post(ApiUrl.get, body: {
    "id_restaurant": id_restaurant,

  });
  return commentsFromJson(response.body);

}
Future<String> getAllRestau(String id_restaurant) async {

  final response = await http.post(ApiUrl.getRestau, body: {
    "id_restaurant": id_restaurant,

  });
  String name="test";
  var datauser = json.decode(response.body);
  name = datauser[0]['name'];
  print("repoooooooooonse ${name}");
  return name;
}
Future<List<Comments>> AllComments() async {

  final response = await http.post(ApiUrl.all);


  return commentsFromJson(response.body);

}
Future<String> addComment(String title, String texto,
    String name, String rating, String id_restaurant,String id_user) async {
  try {
    var map = Map<String, dynamic>();
    map['action'] = ApiUrl.ADD_COMMENT_ACTION;
    map['title'] = title;
    map['texto'] = texto;
    map['name'] = name;
    map['rating'] =rating;
    map['id_restaurant'] = id_restaurant;

    map['id_user'] = id_user;
    final response = await http.post(ApiUrl.add, body: map);
    print('addComment Response: ${response.body}');
    if (200 == response.statusCode) {
      return response.body;
    } else {
      return "error";
    }
  } catch (e) {
    return "error";
  }
}