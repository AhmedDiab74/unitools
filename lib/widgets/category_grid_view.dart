import 'package:flutter/material.dart';
import 'package:unitools/models/item_model.dart';
import 'package:unitools/views/not_found_view.dart';
import 'package:unitools/widgets/category_item.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({
    super.key,
    required this.itemModel,
    required this.numberOfTab,
  });
  final List<ItemModel> itemModel;
  final int numberOfTab;
  @override
  Widget build(BuildContext context) {
    List<ItemModel> filteredItems = [];
    for (var item in itemModel) {
      if (numberOfTab == 0 ||
          (numberOfTab == 1 && item.category == "tools") ||
          (numberOfTab == 2 && item.category == "programs") ||
          (numberOfTab == 3 && item.category == "section") ||
          (numberOfTab == 4 && item.category == "lecture")) {
        filteredItems.add(item);
      }
    }

    numberOfTab.clamp(0, 4);

    return filteredItems.isEmpty
        ? const NotFoundView()
        : Expanded(
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
