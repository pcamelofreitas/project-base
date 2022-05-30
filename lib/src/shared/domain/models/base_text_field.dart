import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BaseTextField extends StatefulWidget {
  final String hintText;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final String? errorMessage;
  final bool autofocus;
  final TextEditingController? controller;
  const BaseTextField({
    Key? key,
    this.hintText = '',
    this.controller,
    this.onChanged,
    this.onSubmitted,
    this.autofocus = true,
    this.keyboardType = TextInputType.text,
    this.errorMessage,
  }) : super(key: key);

  @override
  State<BaseTextField> createState() => _BaseTextFieldState();
}

class _BaseTextFieldState extends State<BaseTextField> {
  late TextEditingController controller;
  @override
  void initState() {
    if (widget.controller == null) {
      controller = TextEditingController();
    } else {
      controller = widget.controller!;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<_BaseTextFieldState>(
      builder: (context, snapshot) {
        return TextField(
          onChanged: (String value) {
            if (widget.onChanged != null) {
              widget.onChanged!(value);
            }
            // decoration
          },
        );
      },
    );
  }
}
