// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utils/color_utils.dart';

class EditText extends StatelessWidget {
  final TextEditingController? controller;
  final double? fontSize;
  final GestureTapCallback? onTap;
  final FontWeight? fontWeight;
  final FocusNode? focusNode;
  final Color? textColor;
  final String? lableText;
  final TextStyle? lableStyle;
  final String? hint;
  final Color? borderColor;
  final TextStyle? hintStyle;
  final Widget? prefixIcon;
  final double? cursorHeight;
  final double? errorTextHeight;
  final Widget? suffixIcon;
  final TextInputType? inputType;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization? textCapitalization;
  final bool? autoCorrect;
  bool? obscureText = false;
  final int? maxLength;
  final bool? filled;
  final InputBorder? border;
  final Color? cursorColor;
  final Color? fillColor;
  bool? showRectangularInputBorder = true;
  bool? showBorder = false;
  final double? borderRadius;
  BorderSide? borderSide;
  final EdgeInsets? contentPadding;
  final FormFieldValidator<String>? validator;
  final int? minLines;
  final bool? isBorderEnabled;
  final int? maxLines;
  final bool? enable;
  final bool? enableSuggestions;
  final bool? enableInteractiveSelection;
  final TextAlign? textAlign;
  final TextInputAction? inputAction;
  BoxConstraints? prefixIconConstraints;
  BoxConstraints? suffixIconConstraints;

  final Function(String value)? onFieldSubmitted;

  EditText({
    super.key,
    this.focusNode,
    this.onTap,
    this.controller,
    this.fontSize = 12.0,
    this.fontWeight = FontWeight.normal,
    this.textColor,
    this.lableText,
    this.lableStyle,
    this.hint,
    this.cursorHeight,
    this.cursorColor = Colors.blue,
    this.hintStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.border,
    this.inputType,
    this.inputFormatters,
    this.textCapitalization = TextCapitalization.none,
    this.autoCorrect = true,
    this.obscureText = false,
    this.maxLength,
    this.filled,
    this.fillColor,
    this.showRectangularInputBorder = false,
    this.showBorder = false,
    this.borderRadius,
    this.borderSide,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 10),
    this.validator,
    this.minLines = 1,
    this.isBorderEnabled = false,
    this.maxLines,
    this.errorTextHeight = 0,
    this.enable = true,
    this.enableSuggestions = true,
    this.enableInteractiveSelection = true,
    this.textAlign = TextAlign.start,
    this.inputAction,
    this.borderColor,
    this.onFieldSubmitted,
    this.prefixIconConstraints,
    this.suffixIconConstraints,
  }) {
    if (showRectangularInputBorder! && (showBorder == null)) {
      showBorder = true;
    }
    borderSide ??= const BorderSide();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      controller: controller,
      keyboardType: inputType,
      focusNode: focusNode,
      inputFormatters: inputFormatters,
      textCapitalization: textCapitalization!,
      autocorrect: autoCorrect!,
      obscureText: obscureText!,
      validator: validator,
      maxLength: maxLength,
      cursorColor: cursorColor,
      autovalidateMode: AutovalidateMode.disabled,
      // style: const TextStyle(fontFamily: Constants.circularstdbook_text),
      decoration: InputDecoration(
        hintText: hint,
        labelText: lableText,
        labelStyle: lableStyle,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        filled: filled,
        counterText: '',
        fillColor: fillColor,
        border: border,
        hintStyle: const TextStyle(
          fontSize: 14,
        ),
        errorStyle: const TextStyle(fontSize: 10, color: AppColors.errorColor),
        disabledBorder: isBorderEnabled!
            ? OutlineInputBorder(
                borderSide: BorderSide(
                    color: borderColor ?? AppColors.white, width: 1.0),
                borderRadius: BorderRadius.all(
                  Radius.circular(borderRadius ?? 0),
                ),
              )
            : UnderlineInputBorder(
                borderSide: BorderSide(color:borderColor?? AppColors.grey)),
        focusedBorder: isBorderEnabled!
            ? OutlineInputBorder(
                borderSide: BorderSide(color:borderColor ?? AppColors.grey, ),
                borderRadius: BorderRadius.all(
                  Radius.circular(borderRadius ?? 0),
                ),
              )
            : UnderlineInputBorder(
                borderSide: BorderSide(color:borderColor?? AppColors.grey)),
        enabledBorder: isBorderEnabled!
            ? OutlineInputBorder(
                borderSide: BorderSide(color:borderColor?? AppColors.white, ),
                borderRadius: BorderRadius.all(
                  Radius.circular(borderRadius ?? 0),
                ),
              )
            : UnderlineInputBorder(
                borderSide: BorderSide(color:borderColor?? AppColors.grey)),
        focusedErrorBorder: isBorderEnabled!
            ? OutlineInputBorder(
                borderSide: BorderSide(color:borderColor?? AppColors.white, ),
                borderRadius: BorderRadius.all(
                  Radius.circular(borderRadius ?? 0),
                ),
              )
            : const UnderlineInputBorder(
                borderSide: BorderSide(color:AppColors.grey)),
        errorBorder: isBorderEnabled!
            ? OutlineInputBorder(
                borderSide: const BorderSide(color: AppColors.errorColor, width: 1.0),
                borderRadius: BorderRadius.all(
                  Radius.circular(borderRadius ?? 0),
                ),
              )
            : const UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.errorColor)),
        contentPadding: contentPadding,
        prefixIconConstraints: prefixIconConstraints,
        suffixIconConstraints: suffixIconConstraints
      ),
      minLines: minLines,
      maxLines: maxLines ?? 1,
      enabled: enable,
      enableSuggestions: enableSuggestions!,
      enableInteractiveSelection: enableInteractiveSelection!,
      textAlign: textAlign!,
      textInputAction: inputAction,
      onFieldSubmitted: onFieldSubmitted,
    );
  }
}
