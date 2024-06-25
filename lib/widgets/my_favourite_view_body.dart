// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:unitools/core/constant.dart';
import 'package:unitools/core/dimensions.dart';

class MyFavouriteViewBody extends StatefulWidget {
  const MyFavouriteViewBody({super.key}); // Use @required for key parameter
  @override
  State<MyFavouriteViewBody> createState() => _MyFavouriteViewBodyState();
}

class _MyFavouriteViewBodyState extends State<MyFavouriteViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My favourite"),
        centerTitle: true,
      ),
      body: favouriteItem.isEmpty
          ? const Center(
              child: Text(
                "No Items Yet",
                style: TextStyle(fontSize: 20),
              ),
            )
          : SafeArea(
              child: GridView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: favouriteItem.length,
                physics: const BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: Dimensions.screenHeight(context) * 0.00095,
                  crossAxisSpacing: Dimensions.screenWidth(context) * .029,
                  mainAxisSpacing: 12,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(8),
                    width: 230,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: const Color(0xff1212120D)),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: Dimensions.screenWidth(context) * 0.5,
                              height: 86,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(favouriteItem[index].image),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Text(
                              favouriteItem[index].title,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              favouriteItem[index].subTitle,
                              style: const TextStyle(
                                fontSize: 12,
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
                                        // width: 75,
                                        width: Dimensions.screenWidth(context) *
                                            0.19,
                                        height: 25,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: const Color.fromARGB(
                                              207, 242, 240, 240),
                                        ),
                                        child: Text(
                                          favouriteItem[index].university,
                                          style: const TextStyle(
                                            fontSize: 12,
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
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: const Color.fromARGB(
                                              207, 242, 240, 240),
                                        ),
                                        child: Text(
                                          favouriteItem[index].type,
                                          style: const TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  favouriteItem[index].faculty != null
                                      ? Container(
                                          width:
                                              Dimensions.screenWidth(context) *
                                                  0.348,
                                          height: 31,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            color: const Color.fromARGB(
                                                207, 242, 240, 240),
                                          ),
                                          child: Text(
                                            favouriteItem[index].faculty ?? "",
                                            style: const TextStyle(
                                              fontSize: 12,
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
                          // top: 185,
                          top: Dimensions.screenHeight(context) * 0.29,
                          // left: 145,
                          left: Dimensions.screenWidth(context) * 0.33,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                favouriteItem.remove(favouriteItem[index]);
                              });
                            },
                            child: Icon(
                              favouriteItem.contains(favouriteItem[index])
                                  ? Icons.favorite
                                  : Icons.favorite_outline,
                              size: 25,
                              color:
                                  favouriteItem.contains(favouriteItem[index])
                                      ? Colors.red
                                      : null,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
    );
  }
}
