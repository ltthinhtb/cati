import 'package:cati/common/app_colors.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatefulWidget {
  final TextEditingController? inputController;
  final ValueChanged<String>? onChanged;
  final String? hintText;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final bool obscureText;
  final FocusNode? focusNode;
  final EdgeInsets? padding;
  final bool? filled;
  final Color? fillColor;
  final Widget? prefixIcon;
  final String? labelText;

  const SearchTextField({
    Key? key,
    this.inputController,
    this.onChanged,
    this.hintText,
    this.validator,
    this.obscureText = false,
    this.onFieldSubmitted,
    this.focusNode,
    this.padding,
    this.filled,
    this.fillColor,
    this.prefixIcon,
    this.labelText,
  }) : super(key: key);

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  late bool _obscureText;

  @override
  void initState() {
    _obscureText = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.white,
      ),
      child: TextFormField(
        focusNode: widget.focusNode,
        controller: widget.inputController,
        obscureText: _obscureText,
        onFieldSubmitted: widget.onFieldSubmitted,
        cursorColor: AppColors.primary,
        decoration: InputDecoration(
          filled: widget.filled,
          fillColor: widget.fillColor,
          hintText: widget.hintText,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          contentPadding: widget.padding ??
              const EdgeInsets.only(left: 16, right: 16, top: 14, bottom: 12),
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
              : null,
        ),
        onChanged: widget.onChanged,
        validator: widget.validator,
      ),
    );
  }
}
