import 'package:flutter/material.dart';
import 'package:unitools/models/item_model.dart';
import 'package:unitools/widgets/catergory_item_with_name.dart';

class CategoryGridViewWithName extends StatelessWidget {
  const CategoryGridViewWithName({
    super.key,
    required this.itemModel,
  });
  final List<ItemModel> itemModel;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      itemCount: itemModel.length,
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.79,
        crossAxisSpacing: 10,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) {
        return CategoryItemWithName(
          itemModel: itemModel[index],
        );
      },
    );
  }
}
