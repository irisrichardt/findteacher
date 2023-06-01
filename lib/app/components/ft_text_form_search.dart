import 'package:flutter/material.dart';
import 'package:findteacher/app/components/ft_text_form_field.dart';

class FTTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? padding;

  const FTTextFormField({
    Key? key,
    this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FTTextFormField(
      padding: padding,
    );
  }
}
