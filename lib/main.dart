import 'package:flutter/cupertino.dart';
import 'package:project_base/dependency_injector.dart';
import 'package:project_base/src/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupDI();
  runApp(const BaseApp());
}
