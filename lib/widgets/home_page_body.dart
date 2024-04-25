// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'package:unitools/core/constant.dart';
import 'package:unitools/models/item_navigaion_model.dart';
import 'package:unitools/views/add_item_view.dart';
import 'package:unitools/views/my_favourite_view.dart';
import 'package:unitools/views/not_found_view.dart';
import 'package:unitools/widgets/category_grid_view.dart';
import 'package:unitools/widgets/category_grid_view_without_name.dart';
import 'package:unitools/widgets/custom_app_bar.dart';
import 'package:unitools/widgets/search_section.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  bool isClickedHome = true;
  bool isClickedTools = false;
  bool isClickedProgram = false;
  bool isClickedSection = false;
  bool isClickedLectures = false;

  @override
  Widget build(BuildContext context) {
    const linearGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0xffA0DAFB), Color(0xff0A8ED9)],
    );

    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) {
          print(value);
          if (value == 2) {
            Navigator.pushNamed(context, MyFavouriteView.routeName)
                .whenComplete(() => setState(() {}));
          } else if (value == 2) {
            Navigator.pushNamed(context, AddItemView.routeName);
          }
        },
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedIndex: 5,
        destinations: itemNavigationBar.map((item) {
          return NavigationDestination(
            icon: item.icon == ""
                ? Icon(item.photo, color: Colors.red)
                : SvgPicture.asset(item.icon),
            label: item.title,
          );
        }).toList(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const CustomAppBar(),
              const SearchSection(linearGradient: linearGradient),
              const SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      clickTap(1);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: !isClickedHome
                            ? const Color.fromARGB(207, 242, 240, 240)
                            : null,
                        gradient: isClickedHome ? linearGradient : null,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 60,
                      height: 40,
                      child: Text(
                        "Home",
                        style: TextStyle(
                            color: isClickedHome
                                ? Colors.white
                                : const Color(0xff858585)),
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      clickTap(2);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: !isClickedTools
                            ? const Color.fromARGB(207, 242, 240, 240)
                            : null,
                        borderRadius: BorderRadius.circular(10),
                        gradient: isClickedTools ? linearGradient : null,
                      ),
                      width: 60,
                      height: 40,
                      child: Text(
                        "Tools",
                        style: TextStyle(
                            color: isClickedTools
                                ? Colors.white
                                : const Color(0xff858585)),
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      clickTap(3);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: !isClickedProgram
                            ? const Color.fromARGB(207, 242, 240, 240)
                            : null,
                        gradient: isClickedProgram ? linearGradient : null,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 80,
                      height: 40,
                      child: Text(
                        "Programs",
                        style: TextStyle(
                            color: isClickedProgram
                                ? Colors.white
                                : const Color(0xff858585)),
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      clickTap(4);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: !isClickedSection
                            ? const Color.fromARGB(207, 242, 240, 240)
                            : null,
                        borderRadius: BorderRadius.circular(10),
                        gradient: isClickedSection ? linearGradient : null,
                      ),
                      width: 74,
                      height: 40,
                      child: Text(
                        "Sections",
                        style: TextStyle(
                            color: isClickedSection
                                ? Colors.white
                                : const Color(0xff858585)),
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      clickTap(5);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: !isClickedLectures
                            ? const Color.fromARGB(207, 242, 240, 240)
                            : null,
                        borderRadius: BorderRadius.circular(10),
                        gradient: isClickedLectures ? linearGradient : null,
                      ),
                      width: 80,
                      height: 40,
                      child: Text(
                        "Lectures",
                        style: TextStyle(
                            color: isClickedLectures
                                ? Colors.white
                                : const Color(0xff858585)),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(
                height: 27,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Discover more",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  GestureDetector(
                    child: const Text(
                      "See more",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff00A2FF),
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              isClickedHome
                  ? CategoryGridViewWithName(
                    numberOfTab: 0,
                  itemModel: items,
                                      )
                  : isClickedTools
                      ? const NotFoundView()
                      : isClickedProgram
                          ? CategoryGridViewWithName(
                            numberOfTab: 2,
                          itemModel: items,
                                                      )
                          : isClickedSection
                              ? CategoryGridViewWithName(
                                numberOfTab: 3,
                              itemModel: items,
                                                              )
                              : isClickedLectures
                                  ? CategoryGridViewWithName(
                                    numberOfTab: 4,
                                  itemModel: items,
                                                                      )
                                  : const Text("")
            ],
          ),
        ),
      ),
    );
  }

  void clickTap(int state) {
    switch (state) {
      case 1:
        isClickedHome = true;
        isClickedTools = false;
        isClickedProgram = false;
        isClickedSection = false;
        isClickedLectures = false;
        setState(() {});
      case 2:
        isClickedHome = false;
        isClickedTools = true;
        isClickedProgram = false;
        isClickedSection = false;
        isClickedLectures = false;
        setState(() {});
      case 3:
        isClickedHome = false;
        isClickedTools = false;
        isClickedProgram = true;
        isClickedSection = false;
        isClickedLectures = false;
        setState(() {});
      case 4:
        isClickedHome = false;
        isClickedTools = false;
        isClickedProgram = false;
        isClickedSection = true;
        isClickedLectures = false;
        setState(() {});
      case 5:
        isClickedHome = false;
        isClickedTools = false;
        isClickedProgram = false;
        isClickedSection = false;
        isClickedLectures = true;
        setState(() {});
        break;
      default:
    }
  }
}

class ItemNavigationBar extends StatelessWidget {
  const ItemNavigationBar({
    super.key,
    required this.item,
  });
  final ItemNavigationModel item;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        item.icon == ""
            ? Icon(
                item.photo,
                color: Colors.red,
              )
            : SvgPicture.asset(item.icon),
        const SizedBox(
          height: 9.5,
        ),
        Text(
          item.title,
          style: const TextStyle(color: Colors.black, fontSize: 14),
        ),
      ],
    );
  }
}
