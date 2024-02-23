// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_cat/core/styles/app_color.dart';
import 'package:flutter/material.dart';

import 'package:app_cat/domain/models/breeds_model.dart';
import 'package:app_cat/domain/models/description_cat_model.dart';
import 'package:app_cat/presentation/pages/details%20cat/page/details_cat.dart';
import 'package:get/get.dart';

class CardBreeds extends StatelessWidget {
  final BreedsModel breeds;
  final DescriptionCat description;
  const CardBreeds({
    Key? key,
    required this.breeds,
    required this.description,
  }) : super(key: key);

  String initialslName(String name) {
    List<String> palavras = name.split(' ');
    String iniciais = '';

    if (palavras.isNotEmpty) {
      iniciais += palavras[0][0].toUpperCase();

      if (palavras.length > 1) {
        iniciais += palavras[1][0].toUpperCase();
      }
    }

    return iniciais;
  }

  @override
  Widget build(BuildContext context) {
   
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          mouseCursor: SystemMouseCursors.move,
          trailing: Icon(Icons.navigate_next_rounded),
          iconColor: AppColors.pink,
          splashColor: AppColors.lightGray2,
          leading: ClipOval(
            child: Image.network(
              description.url ?? '',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CircleAvatar(
                  backgroundColor: AppColors.lightGray1,
                  child: Text(
                    initialslName(breeds.name!),
                    style: TextStyle(
                      color: AppColors.pink,
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          title: Text(
            breeds.name ?? '',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.lead,
            ),
          ),
          subtitle: Text(
            breeds.temperament ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: AppColors.lead,
            ),
          ),
          onTap: () {
            Get.to(() => DetailsCat(
                  breedsModel: breeds,
                  description: description,
                ));
          },
        ),
      ],
    );
  }
}
