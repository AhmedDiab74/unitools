import 'package:flutter/material.dart';
import 'package:unitools/core/constant.dart';
import 'package:unitools/core/dimensions.dart';
import 'package:unitools/widgets/category_item.dart';

class MyFavouriteGridView extends StatelessWidget {
  const MyFavouriteGridView({
    super.key,
  });
  // final List<ItemModel> itemModel;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: favouriteItem.length,
      physics: const BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: Dimensions.screenHeight(context) * 0.0009,
        crossAxisSpacing: Dimensions.screenWidth(context) * .02,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) {
        return CategoryItem(
          itemModel: favouriteItem[index],
        );
      },
    );
  }
}
