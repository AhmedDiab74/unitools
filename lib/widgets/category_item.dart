import 'package:flutter/material.dart';
import 'package:unitools/models/item_model.dart';

class CategoryItemWithoutName extends StatelessWidget {
  const CategoryItemWithoutName({
    super.key, required this.itemModel,
  });
  final ItemModel itemModel;
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 86,
            decoration:  BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(itemModel.image),
                    fit: BoxFit.fill)),
          ),
           Text(
          itemModel.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
           Text(
            itemModel.subTitle,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 90,
                      height: 25,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: const Color.fromARGB(207, 242, 240, 240),
                      ),
                      child:  Text(
                        itemModel.university,
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
                        itemModel.type,
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
              
              ],
            ),
          )
        ],
      ),
    );
  }
}
