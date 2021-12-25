import 'package:flutter/material.dart';

class AppTextFieldWidget extends StatefulWidget {
  final TextEditingController? inputController;
  final ValueChanged<String>? onChanged;
  final TextInputType? textInputType;
  final String? label;
  final String? hintText;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final bool obscureText;
  final FocusNode? focusNode;
  final EdgeInsets? padding;
  final bool? filled;
  final Color? fillColor;
  final Widget? prefixIcon;

  AppTextFieldWidget(
      {this.inputController,
      this.onChanged,
      this.textInputType,
      this.label,
      this.hintText,
      this.validator,
      this.obscureText = false,
      this.onFieldSubmitted,
      this.focusNode,
      this.padding,
      this.filled,
      this.fillColor,
      this.prefixIcon});

  @override
  State<AppTextFieldWidget> createState() => _AppTextFieldWidgetState();
}

class _AppTextFieldWidgetState extends State<AppTextFieldWidget> {
  late bool _obscureText;

  @override
  void initState() {
    _obscureText = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
            visible: widget.label != null,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                widget.label ?? "",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 12),
              ),
            )),
        TextFormField(
          focusNode: widget.focusNode,
          controller: widget.inputController,
          obscureText: _obscureText,
          onFieldSubmitted: widget.onFieldSubmitted,
          decoration: InputDecoration(
              filled: widget.filled,
              fillColor: widget.fillColor,
              hintText: widget.hintText,
              contentPadding: widget.padding ??
                  const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
              suffixIconConstraints: const BoxConstraints(maxHeight: 24),
              prefixIconConstraints: const BoxConstraints(maxHeight: 24),
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.obscureText
                  ? GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(_obscureText
                            ? Icons.remove_red_eye_outlined
                            : Icons.remove_red_eye),
                      ),
                    )
                  : null),
          keyboardType: widget.textInputType,
          onChanged: widget.onChanged,
          validator: widget.validator,
        ),
      ],
    );
  }
}
