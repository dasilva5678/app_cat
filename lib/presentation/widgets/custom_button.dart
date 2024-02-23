// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final Size? maximumSize;
  final bool enabled;
  final Size? minimumSize;
  final Color? backgroundColor;
  final Color? borderColor;
  final TextStyle? style;
  final double borderRadius;
  final SvgPicture? image;
  CustomButton({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.maximumSize,
    this.enabled = true,
    required this.minimumSize,
    this.backgroundColor,
    this.borderColor,
    this.style,
    this.borderRadius = 3,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !enabled,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          maximumSize: maximumSize,
          minimumSize: minimumSize,
          side: BorderSide(
            width: 1.0,
            color: borderColor ?? Colors.transparent,
          ),
          animationDuration: Duration(seconds: 10),
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              image ?? const SizedBox(),
              SizedBox(width: 8),
              Text(
                title,
                style: style,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
