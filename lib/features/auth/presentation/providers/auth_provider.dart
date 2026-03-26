import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/user.dart';
import '../../domain/usecases/login_usecase.dart';
// import '../../../../injection_container.dart'; // uncomment to use GetIt

part 'auth_provider.g.dart';

@riverpod
class AuthNotifier extends _$AuthNotifier {
  @override
  AsyncValue<User?> build() => const AsyncValue.data(null);

  Future<void> login(String email, String password) async {
    state = const AsyncValue.loading();
    // final loginUseCase = ref.read(loginUseCaseProvider);
    state = await AsyncValue.guard(() async {
      // final result = await loginUseCase(LoginParams(email: email, password: password));
      // return result.fold((f) => throw Exception(f.message), (u) => u);
      throw UnimplementedError('Wire up LoginUseCase via ref or GetIt');
    });
  }

  void logout() => state = const AsyncValue.data(null);
}
