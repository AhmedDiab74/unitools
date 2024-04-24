import 'package:flutter/material.dart';
import 'package:unitools/models/item_model.dart';
import 'package:unitools/widgets/category_item.dart';

class CategoryGridViewWithoutName extends StatelessWidget {
  const CategoryGridViewWithoutName({
    super.key, required this.itemModel,
  });
  final List<ItemModel> itemModel;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      itemCount: 1,
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: .98,
        crossAxisSpacing: 10,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) {
        return  CategoryItemWithoutName(itemModel: itemModel[index],);
      },
    );
  }
}
