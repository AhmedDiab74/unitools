// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:unitools/core/constant.dart';
import 'package:unitools/models/item_model.dart';

class CategoryItem extends StatefulWidget {
  const CategoryItem({
    super.key,
    required this.itemModel,
  });

  final ItemModel itemModel;

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: 230,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: const Color(0xff1212120D)),
      ),
      child: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 86,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.itemModel.image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              widget.itemModel.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(
              widget.itemModel.subTitle,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 75,
                        height: 25,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: const Color.fromARGB(207, 242, 240, 240),
                        ),
                        child: Text(
                          widget.itemModel.university,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Container(
                        width: 65,
                        height: 25,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: const Color.fromARGB(207, 242, 240, 240),
                        ),
                        child: Text(
                          widget.itemModel.type,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  widget.itemModel.faculty != null
                      ? Container(
                          width: 142,
                          height: 31,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: const Color.fromARGB(207, 242, 240, 240),
                          ),
                          child: Text(
                            widget.itemModel.faculty ?? "",
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      : const Text(""),
                ],
              ),
            )
          ],
        ),
        Positioned(
          top: 185,
          left: 145,
          child: GestureDetector(
            // Step 2
            onTap: () {
              setState(() {
                if (!favouriteItem.contains(widget.itemModel)) {
                  favouriteItem.add(widget.itemModel);
                } else {
                  favouriteItem.remove(widget.itemModel);
                }
              });
            },
            child: Icon(
              favouriteItem.contains(widget.itemModel)
                  ? Icons.favorite
                  : Icons.favorite_outline, // Step 4
              size: 25,
              color: favouriteItem.contains(widget.itemModel)
                  ? Colors.red
                  : null, // Example: Change color when favorited
            ),
          ),
        ),
      ]),
    );
  }
}
