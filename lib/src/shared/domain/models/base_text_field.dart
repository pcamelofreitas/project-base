import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_base/src/shared/domain/models/base_text_controller.dart';
import 'package:rxdart/rxdart.dart';

enum SUFFIX { none, eye, close, copy }

class BaseTextField extends StatefulWidget {
  final String hintText;
  final BaseTextFieldController? controller;
  final List<TextInputFormatter> formatters;
  final TextInputType keyboardType;
  final void Function(String)? onSubmitted;
  final String? errorMessage;
  final bool autofocus;
  final FocusNode? focusNode;

  final Function(String)? onChanged;
  final bool? enabled;
  final int maxLines;
  final TextCapitalization textCapitalization;
  const BaseTextField({
    Key? key,
    this.hintText = '',
    this.controller,
    this.formatters = const <TextInputFormatter>[],
    this.keyboardType = TextInputType.text,
    this.onSubmitted,
    this.errorMessage,
    this.autofocus = true,
    this.focusNode,
    this.onChanged,
    this.enabled = true,
    this.textCapitalization = TextCapitalization.none,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  State<BaseTextField> createState() => _BaseTextFieldState();
}

class _BaseTextFieldState extends State<BaseTextField> {
  late BehaviorSubject<bool> focusSubject;
  late FocusNode focusNode;
  late void Function() focusListener;
  late BaseTextFieldController controller;

  @override
  void initState() {
    if (widget.controller == null) {
      controller = BaseTextFieldController(null);
    } else {
      controller = widget.controller!;
    }
    focusSubject = BehaviorSubject.seeded(false);
    focusNode = widget.focusNode ?? FocusNode();
    focusListener = () {
      focusSubject.add(focusNode.hasFocus);
    };
    focusNode.addListener(focusListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<_TextFieldState>(
      initialData: _TextFieldState(
        const BaseTextFieldControllerState(),
        widget.autofocus,
      ),
      stream: Rx.combineLatest2<BaseTextFieldControllerState, bool,
          _TextFieldState>(
        controller.stream,
        focusSubject.stream,
        (state, hasFocus) => _TextFieldState(state, hasFocus),
      ),
      builder: (context, snapshot) {
        final data = snapshot.data;
        final hasFocus = data?.hasFocus;
        final state = data?.state;

        return Theme(
          data: generateTheme(context, state),
          child: TextField(
            onTap: () {
              controller.markAsTouched();
            },
            onChanged: (String value) {
              if (widget.onChanged != null) {
                widget.onChanged!(value);
              }
              controller.internalOnChanged(value);
            },
            enabled: widget.enabled,
            textCapitalization: widget.textCapitalization,
            onSubmitted: widget.onSubmitted,
            maxLines: widget.maxLines,
            minLines: 1,
            autofocus: widget.autofocus == true,
            focusNode: focusNode,
            inputFormatters: widget.formatters,
            keyboardType: widget.keyboardType,
            controller: controller,
            style: style(hasFocus ?? false),
            decoration: InputDecoration(
              hintText: widget.hintText,
              errorText: state?.shouldShowValidationState == true
                  ? state?.errorMessage
                  : null,
            ),
          ),
        );
      },
    );
  }

  ThemeData generateTheme(
    BuildContext context,
    BaseTextFieldControllerState? state,
  ) {
    final currentTheme = Theme.of(context);
    final shouldShowSuccess =
        state != null && state.shouldShowValidationState && state.isValid;

    return currentTheme.copyWith(
      inputDecorationTheme: currentTheme.inputDecorationTheme.copyWith(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 24,
        ),
        hintStyle: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w400,
          letterSpacing: 0,
          color: Color.fromRGBO(127, 142, 157, 1),
        ),
        errorStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.4,
          color: Color.fromRGBO(229, 25, 76, 1),
        ),
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: shouldShowSuccess
                ? const Color.fromRGBO(0, 233, 99, 1)
                : const Color.fromRGBO(203, 203, 203, 1),
          ),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
              width: 1,
              color: shouldShowSuccess
                  ? const Color.fromRGBO(0, 233, 99, 1)
                  : const Color.fromRGBO(203, 203, 203, 1)),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: shouldShowSuccess
                ? const Color.fromRGBO(0, 233, 99, 1)
                : const Color.fromRGBO(203, 203, 203, 1),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: shouldShowSuccess
                ? const Color.fromRGBO(0, 233, 99, 1)
                : const Color.fromRGBO(127, 142, 157, 1),
          ),
        ),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Color.fromRGBO(229, 25, 76, 1),
          ),
        ),
        focusedErrorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Color.fromRGBO(229, 25, 76, 1),
          ),
        ),
      ),
      primaryColor: (state?.shouldShowValidationState ?? false)
          ? shouldShowSuccess
              ? const Color.fromRGBO(0, 233, 99, 1)
              : const Color.fromRGBO(229, 25, 76, 1)
          : const Color.fromRGBO(127, 142, 157, 1),
    );
  }

  TextStyle style(bool hasFocus) {
    if (hasFocus == true) {
      return const TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 28,
        color: Color.fromRGBO(0, 0, 0, 1),
      );
    }
    return const TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 28,
      color: Color.fromRGBO(112, 112, 112, 1),
    );
  }

  @override
  void dispose() {
    focusNode.removeListener(focusListener);
    focusNode.dispose();
    super.dispose();
  }
}

class _TextFieldState {
  final bool hasFocus;
  final BaseTextFieldControllerState state;

  _TextFieldState(this.state, this.hasFocus);
}
