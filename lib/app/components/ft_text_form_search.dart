import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:findteacher/app/components/ft_text_form_field.dart';

class FTTextFormSearch extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final TextEditingController? controller;
  final String? initialValue;
  final String? label;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;

  const FTTextFormSearch({
    Key? key,
    this.padding,
    this.controller,
    this.initialValue,
    this.label,
    this.onChanged,
    this.validator,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FTTextFormField(
      padding: padding,
      controller: controller,
      initialValue: initialValue,
      label: label,
      onChanged: onChanged,
      validator: validator,
      inputFormatters: inputFormatters,
      suffix: const Icon(Icons.search),
    );
  }
}
