import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_cat/presentation/pages/categories%20page/controller/description_cats_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DescriptionCatsController descriptionCatsController =
      Get.find<DescriptionCatsController>();

  @override
  void initState() {
    super.initState();
    descriptionCatsController.getDescriptionCat(1, 20);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: body());
  }

  Widget body() {
    return GetBuilder<DescriptionCatsController>(builder: (controller) {
      return SafeArea(
        child: descriptionCatsController.descriptionCatList.isNotEmpty
            ? ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: controller.descriptionCatList.length,
                itemBuilder: (context, index) {
                  var indexList = controller.descriptionCatList[index].breeds!;
                  return Container(
                    child: Text('Item ${indexList.map((e) => e.name)}'),
                  );
                })
            : const Center(
                child: CircularProgressIndicator(),
              ),
      );
    });
  }
}
