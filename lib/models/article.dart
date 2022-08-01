class Article {
  String? title;
  String? description;
  String? urlToImage;

  Article({
    this.title,
    this.description,
    this.urlToImage,
  });

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        title: json["title"] == null ? null : json["title"],
        description: json["description"] == null ? null : json["description"],
        urlToImage: json["urlToImage"] == null ? null : json["urlToImage"],
  );
}

class NewModel {
  List<Article>? articles;

  NewModel({
    this.articles,
  });

  factory NewModel.fromJson(Map<String, dynamic> json) => NewModel(
        articles: json["articles"] == null
            ? null
            : List<Article>.from(json["articles"].map((x) => Article.fromJson(x)).toList()),
      );
}