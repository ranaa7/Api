class Postmodel {
  int userid;
  int id;
  String todo;
  bool complete;

  Postmodel(
      {required this.userid,
      required this.id,
      required this.todo,
      required this.complete});

  factory Postmodel.fromjson(Map<String, dynamic> json) {
    //factory ashan a return mn el constructor w 3mlna el function di ashan a5od el variables ely 3la shkl map w a5leha value bs bdl key w value
    return Postmodel(
        userid: json['userId'],
        id: json['id'],
        todo: json['todo'],
        complete: json['completed']);
  }
}
