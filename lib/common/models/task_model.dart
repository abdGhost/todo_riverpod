import 'dart:convert';

// final taskModel = taskModelFromJson(String str)

TaskModel taskModelFromJson(String str) => TaskModel.fromJson(json.decode(str));

String taskModelToJson(TaskModel data) => json.encode(data.toJson());

class TaskModel {
  int? id;
  String? title;
  String? desc;
  int? isCompleted;
  String? date;
  String? startTime;
  String? endTime;
  int? remind;
  String? repeat;

  TaskModel({
    this.id,
    this.title,
    this.desc,
    this.isCompleted,
    this.date,
    this.startTime,
    this.endTime,
    this.remind,
    this.repeat,
  });

  factory TaskModel.fromJson(Map<String, dynamic> fromJson) => TaskModel(
        id: fromJson['id'],
        title: fromJson['title'],
        desc: fromJson['desc'],
        isCompleted: fromJson['isCompleted'],
        date: fromJson['date'],
        startTime: fromJson['startTime'],
        endTime: fromJson['endTime'],
        remind: fromJson['remind'],
        repeat: fromJson['repeat'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'desc': desc,
        'isCompleted': isCompleted,
        'date': date,
        'startTime': startTime,
        'endTime': endTime,
        'remind': remind,
        'repeat': repeat,
      };
}
