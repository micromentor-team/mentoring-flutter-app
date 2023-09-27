import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldWidget extends StatefulWidget {
  final TextEditingController? textController;
  final Function(String) onChanged;
  final String label;
  final bool? isPassword;
  final int? maxLength;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const TextFormFieldWidget({
    super.key,
    required this.textController,
    required this.onChanged,
    required this.label,
    this.maxLength,
    this.validator,
    this.isPassword,
    this.keyboardType,
    this.inputFormatters,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  bool? _passwordVisible;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return TextFormField(
      maxLength: widget.maxLength,
      controller: widget.textController,
      autofocus: false,
      obscureText: widget.isPassword != null &&
          widget.isPassword == true &&
          _passwordVisible != null &&
          _passwordVisible == false,
      validator: widget.validator,
      keyboardType: widget.keyboardType,
      inputFormatters: widget.inputFormatters,
      decoration: InputDecoration(
        labelText: widget.label,
        labelStyle: TextStyle(
          color: theme.colorScheme.onSurface,
        ),
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.isPassword != null
            ? IconButton(
                icon: Icon(
                  _passwordVisible!
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: theme.colorScheme.outline,
                ),
                onPressed: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible!;
                  });
                },
              )
            : widget.suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: theme.colorScheme.outline),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: theme.colorScheme.outline),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: theme.colorScheme.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: theme.colorScheme.error),
        ),
      ),
      onChanged: (value) {
        widget.onChanged(value);
      },
    );
  }
}
