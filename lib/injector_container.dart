import 'package:get_it/get_it.dart';
import 'package:skill_swap/pages/auth/login/cubit/login_cubit.dart';

final sl = GetIt.instance;

Future<void> setupDependencies() async {
  sl.registerFactory<LoginCubit>(() => LoginCubit());
}
