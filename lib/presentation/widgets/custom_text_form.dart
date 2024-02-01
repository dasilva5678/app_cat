// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextForm extends StatelessWidget {
  final String? labelText;
  final String? label;
  final TextStyle? labelStyle;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final void Function(String)? onFieldSubmitted;
  final int? maxLines;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final String? initialValue;
  final bool obscureText;
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? preffix;
  final Widget? suffix;
  final bool? enabled;
  final bool isActiveTitle;
  final String? title;
  final void Function(String?)? onChanged;
  final double borderRadius;
  final double inputHeight;
  final EdgeInsetsGeometry? contentPadding;
  final bool autoFocus;
  final bool? readOnly;
  final TextStyle? titleStyle;
  final double? paddingvertical;
  const CustomTextForm({
    Key? key,
    this.labelText,
    this.label,
    this.labelStyle,
    this.textInputAction,
    this.keyboardType,
    this.inputFormatters,
    this.controller,
    this.focusNode,
    this.onFieldSubmitted,
    this.maxLines = 1,
    this.onSaved,
    this.validator,
    this.initialValue,
    this.obscureText = false,
    this.hintText = 'Digite aqui',
    this.hintStyle,
    this.preffix,
    this.suffix,
    this.enabled,
    this.isActiveTitle = false,
    this.title = "",
    this.onChanged,
    this.borderRadius = 32,
    this.inputHeight = 33,
    this.contentPadding = const EdgeInsets.fromLTRB(10.0, 10, 10.0, 10),
    this.autoFocus = false,
    this.readOnly = false,
    this.titleStyle,
    this.paddingvertical = 05,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: paddingvertical!),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isActiveTitle) ...[
            Text(
              title!,
              style: titleStyle,
            ),
            const SizedBox(height: 5),
          ],
          Container(
            height: inputHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(borderRadius),
              ),
              color: Colors.white,
            ),
            child: TextFormField(
              readOnly: readOnly!,
              decoration: InputDecoration(
                labelText: labelText,
                labelStyle: labelStyle,
                hintText: hintText,
                hintStyle: hintStyle,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(borderRadius),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(borderRadius),
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(borderRadius),
                  ),
                ),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(borderRadius),
                    ),
                    borderSide: BorderSide(
                      //  strokeAlign: StrokeAlign.center,
                      color: Colors.grey,
                    )),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    // width: 50
                  ),
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                prefixIcon: preffix,
                suffixIcon: suffix,
                contentPadding: contentPadding,
              ),
              initialValue: initialValue,
              textInputAction: textInputAction,
              keyboardType: keyboardType,
              inputFormatters: inputFormatters,
              controller: controller,
              focusNode: focusNode,
              onFieldSubmitted: onFieldSubmitted,
              maxLines: maxLines,
              onSaved: onSaved,
              validator: validator,
              obscureText: obscureText,
              enabled: enabled,
              onChanged: onChanged,
              // style: AppTextStyle.black18.font15,
              autofocus: autoFocus,
            ),
          ),
        ],
      ),
    );
  }
}
