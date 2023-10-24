import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldWidget extends StatefulWidget {
  final TextEditingController? textController;
  final Function(String) onChanged;
  final String? label;
  final String? hint;
  final bool? isPassword;
  final int? maxLength;
  final int maxLines;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool enabled;

  const TextFormFieldWidget({
    super.key,
    this.textController,
    required this.onChanged,
    this.label,
    this.hint,
    this.maxLength,
    this.maxLines = 1,
    this.validator,
    this.isPassword,
    this.keyboardType,
    this.inputFormatters,
    this.prefixIcon,
    this.suffixIcon,
    this.enabled = true,
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
      enabled: widget.enabled,
      obscureText: widget.isPassword != null &&
          widget.isPassword == true &&
          _passwordVisible != null &&
          _passwordVisible == false,
      validator: widget.validator,
      keyboardType: widget.keyboardType,
      inputFormatters: widget.inputFormatters,
      maxLines: widget.maxLines,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: widget.label,
        labelStyle: TextStyle(
          color: widget.enabled
              ? theme.colorScheme.onSurface
              : theme.colorScheme.onSurface.withOpacity(0.3),
        ),
        hintText: widget.hint,
        hintStyle: theme.textTheme.bodyLarge?.copyWith(
          color: widget.enabled
              ? theme.colorScheme.outline
              : theme.colorScheme.outline.withOpacity(0.3),
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
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: theme.colorScheme.outline.withOpacity(0.3),
          ),
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
