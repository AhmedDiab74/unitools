import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:svg_flutter/svg.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  String selectedCity = "Tanta";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 200,
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Univercity",
                  style: TextStyle(color: Color(0xff838383)),
                ),
                DropdownButton<String>(
                    hint: Text(
                      selectedCity,
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w900),
                    ),
                    padding: EdgeInsets.zero,
                    items: <String>['Tanta', 'Menofia', 'Alexandria', 'Cairo']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(value, style: const TextStyle(fontSize: 20)),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      selectedCity = value!;
                      setState(() {});
                    })
              ],
            ),
          ),
          Stack(
            children: [
              SvgPicture.asset(
                "assets/bell.svg",
                width: 20,
                height: 25,
              ),
              Positioned(
                left: 10,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
