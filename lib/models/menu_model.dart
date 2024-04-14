import 'package:flutter/material.dart';

class MenuModel {
  final String url;
  final String label;
  final String value;
  final Color color;

  MenuModel({
    required this.url,
    required this.label,
    required this.value,
    required this.color,
  });

  MenuModel copyWith({
    String? url,
    String? label,
    String? value,
    Color? color,
  }) {
    return MenuModel(
      url: url ?? this.url,
      label: label ?? this.label,
      value: value ?? this.value,
      color: color ?? this.color,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'label': label,
      'value': value,
      'color': color,
    };
  }

  factory MenuModel.fromJson(Map<String, dynamic> json) {
    return MenuModel(
      url: json['url'],
      label: json['label'],
      value: json['value'],
      color: json['color'],
    );
  }
}
