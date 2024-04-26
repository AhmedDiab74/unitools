// ignore_for_file: use_full_hex_values_for_flutter_colors, use_build_context_synchronously

import 'dart:io';
import 'dart:typed_data';

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:unitools/widgets/chooce_image_widget.dart';
import 'package:unitools/widgets/custom_text_form_field.dart';

class AddDataViewBody extends StatefulWidget {
  const AddDataViewBody({super.key});

  @override
  State<AddDataViewBody> createState() => _AddDataViewBodyState();
}

class _AddDataViewBodyState extends State<AddDataViewBody> {
  Uint8List? _image1, _image2, _image3, _image4;
  File? selectedImage;
  String selectedCountry = "+20";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 9, vertical: 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Text(
                    "إضافة بيانات",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 106,
                  ),
                  Icon(Icons.chevron_right_sharp),
                ],
              ),
            ),
            const SizedBox(
              height: 75,
            ),
            const Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    width: double.infinity,
                    hintText: "العائلة",
                    hintColor: Color.fromRGBO(18, 18, 18, 0.7),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: CustomTextField(
                    width: double.infinity,
                    hintText: "الأسم",
                    isNumber: true,
                    hintColor: Color.fromRGBO(18, 18, 18, 0.7),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(
              width: double.infinity,
              hintText: "كلية",
              hintColor: Color.fromRGBO(18, 18, 18, 0.7),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(
              width: double.infinity,
              hintText: "جامعة",
              hintColor: Color.fromRGBO(18, 18, 18, 0.7),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(
              width: double.infinity,
              hintText: "الفرقة",
              hintColor: Color.fromRGBO(18, 18, 18, 0.7),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(
              width: double.infinity,
              hintText: "الرقم القومى",
              isNumber: true,
              hintColor: Color.fromRGBO(18, 18, 18, 0.7),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ChooceImageWidget(
                  title: "صورة البطاقة ضهر",
                  image: _image1,
                  onTap: () {
                    showImagePickerOption(context, 1);
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                ChooceImageWidget(
                  title: "صورة البطاقة وش",
                  image: _image2,
                  onTap: () {
                    showImagePickerOption(context, 2);
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ChooceImageWidget(
                  title: "صورة الكارنية ضهر",
                  image: _image3,
                  onTap: () {
                    showImagePickerOption(context, 3);
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                ChooceImageWidget(
                  title: "صورة الكارنية وش",
                  image: _image4,
                  onTap: () {
                    showImagePickerOption(context, 4);
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: const Color(0xffD5D5D580),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.arrow_drop_down,
                        color: Color.fromRGBO(152, 152, 152, 1),
                        size: 40,
                      ),
                      SizedBox(
                        width: 50,
                        height: 40,
                        child: InkWell(
                          onTap: () {
                            showCountryPicker(
                              context: context,
                              showPhoneCode: true,
                              onSelect: (Country country) {
                                setState(() {
                                  selectedCountry = country.phoneCode;
                                });
                              },
                            );
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              selectedCountry,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Expanded(
                  child: CustomTextField(
                    width: double.infinity,
                    hintText: "رقم الهاتف",
                    isNumber: true,
                    hintColor: Color.fromRGBO(18, 18, 18, 0.7),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(
              width: double.infinity,
              hintText: "الإيميل",
              hintColor: Color.fromRGBO(18, 18, 18, 0.7),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(
              width: double.infinity,
              hintText: "المحافظة",
              hintColor: Color.fromRGBO(18, 18, 18, 0.7),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(
              width: double.infinity,
              hintText: "المدينة",
              hintColor: Color.fromRGBO(18, 18, 18, 0.7),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  backgroundColor: const Color.fromRGBO(142, 142, 142, 1),
                ),
                child: const Text(
                  "التالي",
                  style: TextStyle(
                      color: Color(
                        0xffFFFFFF,
                      ),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  void showImagePickerOption(BuildContext context, int index) {
    showModalBottomSheet(
        backgroundColor: Colors.blue[100],
        context: context,
        builder: (builder) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4.5,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _pickImageFromGallery(index);
                      },
                      child: const SizedBox(
                        child: Column(
                          children: [
                            Icon(
                              Icons.image,
                              size: 70,
                            ),
                            Text("المعرض"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _pickImageFromCamera(index);
                      },
                      child: const SizedBox(
                        child: Column(
                          children: [
                            Icon(
                              Icons.camera_alt,
                              size: 70,
                            ),
                            Text("التقط صورة"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Future _pickImageFromGallery(int index) async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnImage == null) return;
    setState(() {
      selectedImage = File(returnImage.path);
      switch (index) {
        case 1:
          _image1 = File(returnImage.path).readAsBytesSync();
          break;
        case 2:
          _image2 = File(returnImage.path).readAsBytesSync();
          break;
        case 3:
          _image3 = File(returnImage.path).readAsBytesSync();
          break;
        case 4:
          _image4 = File(returnImage.path).readAsBytesSync();
          break;
        default:
      }
    });
    Navigator.pop(context);
  }

  Future _pickImageFromCamera(int index) async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;
    setState(() {
      selectedImage = File(returnImage.path);
      switch (index) {
        case 1:
          _image1 = File(returnImage.path).readAsBytesSync();
          break;
        case 2:
          _image2 = File(returnImage.path).readAsBytesSync();
          break;
        case 3:
          _image3 = File(returnImage.path).readAsBytesSync();
          break;
        case 4:
          _image4 = File(returnImage.path).readAsBytesSync();
          break;
        default:
      }
    });
    Navigator.pop(context);
  }
}
