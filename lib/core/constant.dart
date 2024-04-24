import 'package:unitools/models/item_model.dart';
import 'package:unitools/models/item_navigaion_model.dart';

var routes = {};

List<ItemModel> homeItem = [
  ItemModel(
      faculty: "الحاسبات ومعلومات",
      image: "assets/images/it.png",
      title: "IT Lectures",
      subTitle: "Lectures summary for it department",
      university: "Tanta",
      type: "Free"),
  ItemModel(
      faculty: "الحاسبات ومعلومات",
      image: "assets/images/CS Section.png",
      title: "CS Lectures",
      subTitle: "Lectures summary for cs department",
      university: "Tanta",
      type: "Free"),
  ItemModel(
      faculty: "صيدلة",
      image: "assets/images/pharma.png",
      title: "Pharma Summary",
      subTitle: "Farma Sections summary.",
      university: "Monofia",
      type: "Free"),
  ItemModel(
      faculty: "هندسة",
      image: "assets/images/5rasana.png",
      title: "سكاشن خرسانة",
      subTitle: "ملخص سكاشن خرسانة 2022/2023",
      university: "Mansoura",
      type: "Free"),
  ItemModel(
      image: "assets/images/CSPrgrams.png",
      title: "CS programs'",
      subTitle: "all programs for cs department.",
      university: "CS, Tanta",
      type: "Free"),
  ItemModel(
      image: "assets/images/CSPrgrams.png",
      title: "CS programs'",
      subTitle: "all programs for cs department.",
      university: "CS, Tanta",
      type: "Free"),
  ItemModel(
      image: "assets/images/IT Programs.png",
      title: "IT programs'",
      subTitle: "all programs for it department.",
      university: "Tanta",
      type: "Free"),
  ItemModel(
      image: "assets/images/IT Programs.png",
      title: "IT programs'",
      subTitle: "all programs for it department.",
      university: "CS, Tanta",
      type: "Free"),
];

List<ItemModel> programsItem = [
  ItemModel(
      image: "assets/images/visual studio.png",
      title: "Visual studio",
      subTitle: "visual studio program",
      university: "IT&CS ,Tanta",
      type: "Free")
];
List<ItemModel> sectionsItem = [
  ItemModel(
      image: "assets/images/ITSection.png",
      title: "IT Sections",
      subTitle: "Sections summary for it department",
      university: "IT, Tanta",
      type: "Free"),
  ItemModel(
      image: "assets/images/CSSection.png",
      title: "CS Sections",
      subTitle: "Sections summary for cs department",
      university: "CS, Tanta",
      type: "Free"),
  ItemModel(
    image: "assets/images/5rasana.png",
    title: "سكاشن خرسانة",
    subTitle: "ملخص سكاشن خرسانة 2022/2023",
    university: "Mansoura",
    type: "Free",
    faculty: "هندسة",
  ),
  ItemModel(
    image: "assets/images/pharma.png",
    title: "Pharma Summary",
    subTitle: "Farma Sections summary.",
    university: "Monofia",
    type: "Free",
    faculty: "صيدلة",
  ),
  ItemModel(
      image: "assets/images/AI Sec.png",
      title: "AI Sections ",
      subTitle: "Sections summary for AI department",
      university: "AI, Tanta",
      type: "Free"),
  ItemModel(
    image: "assets/images/5rasana.png",
    title: "سكاشن خرسانة",
    subTitle: "ملخص سكاشن خرسانة 2022/2023",
    university: "Mansoura",
    type: "Free",
    faculty: "هندسة",
  ),
  ItemModel(
      image: "assets/images/CSSection.png",
      title: "CS Sections",
      subTitle: "Sections summary for cs department",
      university: "CS, Tanta",
      type: "Free"),
  ItemModel(
      image: "assets/images/IS Sec.png",
      title: "IS Sections",
      subTitle: "Sections summary for IS department",
      university: "IS, Tanta",
      type: "Free"),
];
List<ItemModel> lecturesItem = [
  ItemModel(
    image: "assets/images/it.png",
    title: "IT Lectures",
    subTitle: "Lectures summary for it department",
    university: "Tanta",
    type: "Free",
    faculty: "حاسبات ومعلومات",
  ),
  ItemModel(
    image: "assets/images/CS Section.png",
    title: "CS Lectures",
    subTitle: "Lectures summary for cs department",
    university: "Tanta",
    type: "Free",
    faculty: "حاسبات ومعلومات",
  ),
  ItemModel(
    image: "assets/images/AI Lec.png",
    title: "AI Lectures",
    subTitle: "Lectures summary for it department",
    university: "Tanta",
    type: "Free",
    faculty: "حاسبات ومعلومات",
  ),
];

List<ItemNavigationModel> itemNavigationBar = [
  ItemNavigationModel(icon: "assets/images/person.svg", title: "الحساب"),
  ItemNavigationModel(icon: "assets/images/advertise.svg", title: "إعلاناتي"),
  ItemNavigationModel(icon: "assets/images/add.svg", title: "إضافة"),
  ItemNavigationModel(icon: "assets/images/chat.svg", title: "محادثاتي"),
  ItemNavigationModel(
      icon: "assets/images/homepage.svg", title: "الصفحة الرئيسية"),
];
