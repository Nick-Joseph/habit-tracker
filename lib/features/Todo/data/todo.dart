import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
class Todo {
  final String title;
  final String? subtitle;
  final bool isDone;

  Todo({
    required this.title,
    this.subtitle,
    required this.isDone,
  });

  Todo copyWith({
    required String title,
    String? subtitle,
    required bool isDone,
  }) {
    return Todo(
      title: title,
      subtitle: subtitle ?? this.subtitle,
      isDone: isDone,
    );
  }

  factory Todo.fromJson(Map<String, dynamic> json) {
    final isDone = json['is_Done'] as bool?;
    return Todo(
        title: json['title'] as String,
        subtitle: json['subtitle'] as String,
        isDone: isDone ?? false);
  }
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'subtitle': subtitle,
      'is_Done': isDone,
    };
  }

  @override
  String toString() {
    return '''Todo:{
title: $title\n
subtitle: $subtitle\n
is_Done: $isDone\n
    }''';
  }
}
