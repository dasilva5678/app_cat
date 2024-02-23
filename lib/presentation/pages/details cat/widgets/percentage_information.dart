// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PercentageInformation extends StatefulWidget {
  final int percent;
  final String title;
  const PercentageInformation({
    Key? key,
    required this.percent,
    required this.title,
  }) : super(key: key);

  @override
  State<PercentageInformation> createState() => _PercentageInformationState();
}

class _PercentageInformationState extends State<PercentageInformation> {
  @override
  Widget build(BuildContext context) {
    double percentValue = widget.percent.toDouble() / 10;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("${widget.title}"),
          LinearPercentIndicator(
            width: MediaQuery.of(context).size.width * 0.5,
            lineHeight: 10,
            percent: percentValue,
            animation: true,
            curve: Curves.easeInCirc,
            barRadius: const Radius.circular(10),
            animationDuration: 1500,
            animateFromLastPercent: true,
            backgroundColor: const Color.fromARGB(255, 202, 193, 203),
            progressColor: Color.fromARGB(255, 155, 123, 161),
          ),
        ],
      ),
    );
  }
}
