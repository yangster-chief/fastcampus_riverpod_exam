import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

///
/// riverpod_exam
/// File Name: exam_future_provider
/// Created by sujangmac
///
/// Description:
///
Future<String> fetchUser() async {
  await Future.delayed(const Duration(seconds: 2));
  return 'John Doe';
}

final userProvider = FutureProvider<String>((ref) async {
  return fetchUser();
});

class UserProfileScreen extends ConsumerWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userFuture = ref.watch(userProvider);
    return userFuture.when(
      data: (data) => Text('User: $data'),
      error: (error, stackTrace) => Text('Error: $error'),
      loading: () => const CircularProgressIndicator(),
    );
  }
}
