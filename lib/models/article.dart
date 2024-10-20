import 'dart:convert';

Article articleFromJson(String str) => Article.fromJson(json.decode(str));

String articleToJson(Article data) => json.encode(data.toJson());

class Article {
  final String id;
  final String name;
  final String picture;
  final String content;
  final String categoryId;
  final DateTime createdAt;
  final DateTime updatedAt;

  Article({
    required this.id,
    required this.name,
    required this.picture,
    required this.content,
    required this.categoryId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        id: json["id"],
        name: json["name"],
        picture: json["picture"],
        content: json["content"],
        categoryId: json["categoryId"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "picture": picture,
        "content": content,
        "categoryId": categoryId,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}
