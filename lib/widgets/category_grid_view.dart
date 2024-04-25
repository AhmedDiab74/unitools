import 'package:flutter/material.dart';
import 'package:unitools/models/item_model.dart';
import 'package:unitools/widgets/catergory_item.dart';

class CategoryGridViewWithName extends StatelessWidget {
  const CategoryGridViewWithName({
    super.key,
    required this.itemModel,
    required this.numberOfTab,
  });
  final List<ItemModel> itemModel;
  final int numberOfTab;
  @override
  Widget build(BuildContext context) {
    List<ItemModel> filteredItems = itemModel.where((item) {
      if (numberOfTab == 0) {
        return true;
      } else if (numberOfTab == 1 && item.category == "tools") {
        return true;
      } else if (numberOfTab == 2 && item.category == "programs") {
        return true;
      } else if (numberOfTab == 3 && item.category == "section") {
        return true;
      } else if (numberOfTab == 4 && item.category == "lecture") {
        return true;
      }
      return false;
    }).toList();

    numberOfTab.clamp(0, 4);

    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: filteredItems.length,
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.79,
          crossAxisSpacing: 10,
          mainAxisSpacing: 12,
        ),
        itemBuilder: (context, index) {
          return CategoryItem(
            itemModel: filteredItems[index],
          );
        },
      ),
    );
  }
}
