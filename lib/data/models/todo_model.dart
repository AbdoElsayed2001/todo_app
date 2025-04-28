class TodoModel{
  final int? id;
  final String title;
  final bool isDone;

  TodoModel({this.id,required this.title,this.isDone = false });


  Map<String,dynamic> toMap(){
    return {
      "id" : id,
      "title" : title,
      "isDone" : isDone ? 1 :0 ,
    };
  }

  factory TodoModel.fromMap(Map<String,dynamic> map) {
    return TodoModel(
    id: map["id"],
    title: map["title"],
    isDone: map['isDone'] == 1,
    );
  }

}