import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_address/presentation/pages/categories%20page/controller/categories_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CategoriesController categoriesController = Get.find<CategoriesController>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categoriesController.getAllCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: body());
  }

  Widget body() {
    return GetBuilder<CategoriesController>(builder: (controller) {
      return controller.categories.isNotEmpty
          ? ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: controller.categories.length,
              itemBuilder: (context, index) {
                var indexList = controller.categories[index];
                return Container(
                  child: Text('Item ${indexList.name ?? ''}'),
                );
              })
          : const Center(
              child: CircularProgressIndicator(),
            );
    });
  }
}
