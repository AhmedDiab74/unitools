import 'package:flutter/material.dart';
import 'package:unitools/core/constant.dart';

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
      body: favouriteItem.isEmpty? const Center(child: Text("No Items Yet" ,style: TextStyle(fontSize: 20),),):SafeArea(
      child: GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: favouriteItem.length,
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.79,
        crossAxisSpacing: 10,
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
                      width: double.infinity,
                      height: 86,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage(favouriteItem[index].image), // Use favouriteItem[index]
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      favouriteItem[index].title, // Use favouriteItem[index]
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      favouriteItem[index].subTitle, // Use favouriteItem[index]
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
                                  color: const Color.fromARGB(
                                      207, 242, 240, 240),
                                ),
                                child: Text(
                                  favouriteItem[index].university, // Use favouriteItem[index]
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
                                  color: const Color.fromARGB(
                                      207, 242, 240, 240),
                                ),
                                child: Text(
                                  favouriteItem[index].type, // Use favouriteItem[index]
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
                          favouriteItem[index].faculty != null
                              ? Container(
                                  width: 142,
                                  height: 31,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: const Color.fromARGB(
                                        207, 242, 240, 240),
                                  ),
                                  child: Text(
                                    favouriteItem[index].faculty ?? "",
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
                    onTap: () {
                      setState(() {
                        // if (favouriteItem.contains(favouriteItem[index])) {
                        favouriteItem.remove(favouriteItem[index]);
                        // }
                      });
                    },
                    child: Icon(
                      favouriteItem.contains(favouriteItem[index])
                          ? Icons.favorite
                          : Icons.favorite_outline,
                      size: 25,
                      color: favouriteItem.contains(favouriteItem[index])
                          ? Colors.red
                          : null,
                    ),
                  ),
                ),
              ],
            ),
          );
           
        }, // Convert Iterable to List */
      ),
    )
  
  ,
    );
  }
}
