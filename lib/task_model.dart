import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class TaskModel {
  final String title;
  final String description;
  bool isActive;
  TaskModel({
    required this.title,
    required this.description,
    required this.isActive,
  });

  TaskModel copyWith({
    String? title,
    String? description,
    bool? isActive,
  }) {
    return TaskModel(
      title: title ?? this.title,
      description: description ?? this.description,
      isActive: isActive ?? this.isActive,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      'isActive': isActive,
    };
  }

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      title: map['title'] as String,
      description: map['description'] as String,
      isActive: map['isActive'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory TaskModel.fromJson(String source) => TaskModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'TaskModel(title: $title, description: $description, isActive: $isActive)';

  @override
  bool operator ==(covariant TaskModel other) {
    if (identical(this, other)) return true;

    return other.title == title && other.description == description && other.isActive == isActive;
  }

  @override
  int get hashCode => title.hashCode ^ description.hashCode ^ isActive.hashCode;
}
