import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hrms_mobile/core/network/dio_provider.dart';
import 'package:hrms_mobile/features/auth/data/repositories/auth_repository.dart';
import 'package:hrms_mobile/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository_provider.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) {
  final dioClient = ref.watch(dioProvider);
  return AuthRepositoryImpl(dioClient);
}
