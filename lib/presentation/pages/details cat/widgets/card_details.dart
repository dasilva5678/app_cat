// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:app_cat/core/styles/app_color.dart';

class CardDetails extends StatefulWidget {
  final String title;
  final String subTitle;
  const CardDetails({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  State<CardDetails> createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        width: double.infinity,
        child: Card(
          shadowColor: AppColors.lead,
          color: AppColors.lightGray6,
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: RichText(
              text: TextSpan(
                text: widget.title,
                style: TextStyle(
                  color: AppColors.lead,
                  fontFamily: 'Roboto-Regular',
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
                children: [
                  TextSpan(
                    text: widget.subTitle,
                    style: TextStyle(
                      color: AppColors.lead,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
