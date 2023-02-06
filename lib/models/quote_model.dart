
class Quotemodel {
  int id;
  String quote;
  String author;

  Quotemodel({
    required this.id,
    required this.quote,
    required this.author,
  });



  factory Quotemodel.fromJson(Map<String, dynamic> json) => Quotemodel(
    id: json["id"],
    quote: json["quote"],
    author: json["author"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "quote": quote,
    "author": author,
  };
}
