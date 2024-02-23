import 'package:app_cat/core/styles/app_color.dart';

import 'package:app_cat/presentation/pages/home/widgets/card_breeds.dart';
import 'package:app_cat/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_cat/presentation/pages/home/controller/description_cats_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DescriptionCatsController descriptionCatsController =
      Get.find<DescriptionCatsController>();

  @override
  void initState() {
    super.initState();
    getDescriptionCat();
  }

  void getDescriptionCat() {
    descriptionCatsController.isLoading = true;
    descriptionCatsController
        .getDescriptionCat(1, 20)
        .then((value) => descriptionCatsController.isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Breeds Cat',
          style: TextStyle(
            color: AppColors.lead,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: body(),
    );
  }

  Widget body() {
    return GetBuilder<DescriptionCatsController>(
      builder: (controller) {
        return controller.isLoading
            ? Center(child: CircularProgressIndicator())
            : controller.breedsList.isEmpty
                ? Center(child: Text('Nenhum dado disponível'))
                : SafeArea(
                    child: SingleChildScrollView(
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller.breedsList.length,
                        itemBuilder: (context, index) {
                          var breeds = controller.breedsList[index];
                          var description =
                              controller.descriptionCatList[index];
                          return CardBreeds(
                            description: description,
                            breeds: breeds,
                          );
                        },
                      ),
                    ),
                  );
      },
    );
  }
}
