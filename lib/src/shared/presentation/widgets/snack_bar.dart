import 'package:flutter/material.dart';
import 'package:project_base/src/shared/types/request_status.dart';

const Duration _snackbarDisplayDuration = Duration(seconds: 3);

class BaseSnackBar {
  static final GlobalKey<ScaffoldMessengerState> scaffoldMessengerStateKey =
      GlobalKey<ScaffoldMessengerState>();
  static showNotification(
    RequestStatus status, {
    Duration duration = _snackbarDisplayDuration,
  }) {
    scaffoldMessengerStateKey.currentState?.showSnackBar(SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: status.maybeWhen(
        orElse: () => Colors.white,
        succeeded: (msg) => Colors.green,
        failed: (failed) => Colors.red,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      duration: duration,
      content: LayoutBuilder(
        builder: (context, boxConstraints) {
          return GestureDetector(
            onTap: () =>
                scaffoldMessengerStateKey.currentState?.clearSnackBars(),
            child: Container(
              padding: const EdgeInsets.all(18),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              child: Text(
                status.when(
                  idle: () => '',
                  loading: () => '',
                  succeeded: (msg) => msg ?? 'Sucesso',
                  failed: (failed) => failed.msg,
                ),
                style: const TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
      ),
    ));
  }
}
