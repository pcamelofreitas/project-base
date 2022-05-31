import 'package:flutter/cupertino.dart';
import 'package:project_base/dependency_injector.dart';
import 'package:project_base/src/app.dart';

import 'src/auth/data/repositories/auth_repository.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupDI();
  runApp(
    BaseApp(
      authRepository: di<AuthRepository>(),
    ),
  );
}
