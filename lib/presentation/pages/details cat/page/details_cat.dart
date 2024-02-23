// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_cat/core/services/open_web_view.dart';
import 'package:app_cat/core/styles/app_color.dart';
import 'package:app_cat/presentation/pages/details%20cat/widgets/card_details.dart';
import 'package:app_cat/presentation/pages/details%20cat/widgets/percentage_information.dart';
import 'package:app_cat/presentation/widgets/custom_appbar.dart';
import 'package:app_cat/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'package:app_cat/domain/models/breeds_model.dart';
import 'package:app_cat/domain/models/description_cat_model.dart';

// ignore: must_be_immutable
class DetailsCat extends StatefulWidget {
  BreedsModel? breedsModel;
  DescriptionCat? description;
  DetailsCat({
    Key? key,
    this.breedsModel,
    this.description,
  }) : super(key: key);

  @override
  State<DetailsCat> createState() => _DetailsCatState();
}

class _DetailsCatState extends State<DetailsCat> {
  final styleTitle = TextStyle(
    color: AppColors.lead,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  final styleSubtitle = TextStyle(
    color: AppColors.lead,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  bool _isLoading = false;

  Future<void> wikipediaUrl(String url) async {
    setState(() {
      _isLoading = true;
    });

    await OpenWebView()
        .wikipediaUrl(url: url, message: "Não foi possivel abrir Wikipedia.")
        .then(
      (value) {
        setState(
          () {
            _isLoading = false;
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: CustomAppBar(
        centerTitle: false,
        title: Text(
          'Details Cat',
          style: TextStyle(
            color: AppColors.lead,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: _isLoading ? Center(child: CircularProgressIndicator()) : body(),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              '${widget.breedsModel?.name!.toUpperCase()}',
              style: TextStyle(
                color: Color.fromARGB(255, 155, 123, 161),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                "${widget.description?.url}",
                fit: BoxFit.cover,
                height: 400,
              ),
            ),
            size(),
            characteristics(),
            Container(
              height: 30,
              child: VerticalDivider(
                color: AppColors.lead,
              ),
            ),
            descriptions(),
            button(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget size() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/regua.png",
                    width: 30,
                  ),
                  Text(
                    ' ${widget.description!.height} cm',
                    style: styleSubtitle,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Text(
                  "Height",
                ),
              )
            ],
          ),
          Container(
            height: 90,
            child: VerticalDivider(
              color: AppColors.lead,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/regua.png", width: 30),
                  Text(
                    ' ${widget.description!.width} cm',
                    style: styleSubtitle,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Text("Width"),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget characteristics() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: AppColors.lead,
          )),
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'Characteristics',
            style: styleTitle,
          ),
          SizedBox(height: 20),
          PercentageInformation(
            title: "Affection",
            percent: widget.breedsModel!.affectionLevel,
          ),
          PercentageInformation(
            title: "Dog Friendly",
            percent: widget.breedsModel!.dogFriendly,
          ),
          PercentageInformation(
            title: "Energy Level",
            percent: widget.breedsModel!.energyLevel,
          ),
          PercentageInformation(
            title: "Intelligence",
            percent: widget.breedsModel!.intelligence,
          ),
          PercentageInformation(
            title: "Child Friendly",
            percent: widget.breedsModel!.childFriendly,
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget descriptions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: AppColors.lead,
              )),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Descriptions',
              style: styleTitle,
            ),
          ),
        ),
        SizedBox(height: 20),
        CardDetails(
          title: 'DESCRIPTION:',
          subTitle: ' ${widget.breedsModel?.description}',
        ),
        CardDetails(
          title: 'TEMPERAMENT:',
          subTitle: ' ${widget.breedsModel?.temperament}',
        ),
        CardDetails(
          title: 'ORIGIN:',
          subTitle: ' ${widget.breedsModel?.origin}',
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget button() {
    return CustomButton(
      title: "Saber mais sobre ${widget.breedsModel!.name}",
      style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Color.fromARGB(255, 155, 123, 161)),
      onPressed: () {
        wikipediaUrl(widget.breedsModel!.wikipediaUrl!);
      },
      maximumSize: const Size(double.infinity, 45),
      minimumSize: const Size(double.infinity, 40),
      backgroundColor: Colors.grey.shade200,
      borderRadius: 20,
    );
  }
}
