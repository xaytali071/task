import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task/app_widget.dart';

void main() {
  runApp(const ProviderScope(child: AppWidget()));
}

