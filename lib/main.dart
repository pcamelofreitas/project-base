import 'package:flutter/cupertino.dart';
import 'package:project_base/dependency_injector.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupDI();
  runApp(Container());
}
