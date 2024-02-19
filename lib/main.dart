import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_exam/exam/exam_async_notifier_provier.dart';
import 'package:riverpod_exam/exam/exam_change_notifiter_provider.dart';
import 'package:riverpod_exam/exam/exam_future_provider.dart';
import 'package:riverpod_exam/exam/exam_notifier_provider.dart';
import 'package:riverpod_exam/exam/exam_provider.dart';
import 'package:riverpod_exam/exam/exam_state_notifier_provider.dart';
import 'package:riverpod_exam/exam/exam_state_provider.dart';
import 'package:riverpod_exam/exam/exam_stream_provider.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
          home: Scaffold(
        body: Center(child: ProductListScreen()),
      ));
}
