import 'package:unitools/models/item_model.dart';
import 'package:unitools/models/item_navigaion_model.dart';

var routes = {};

List<ItemModel> homeItem = [
  ItemModel(
      faculty: "الحاسبات ومعلومات",
      image: "assets/it.png",
      title: "IT Lectures",
      subTitle: "Lectures summary for it department",
      university: "Tanta",
      type: "Free"),
  ItemModel(
      faculty: "الحاسبات ومعلومات",
      image: "assets/CS Section.png",
      title: "CS Lectures",
      subTitle: "Lectures summary for cs department",
      university: "Tanta",
      type: "Free"),
  ItemModel(
      faculty: "صيدلة",
      image: "assets/pharma.png",
      title: "Pharma Summary",
      subTitle: "Farma Sections summary.",
      university: "Monofia",
      type: "Free"),
  ItemModel(
      faculty: "هندسة",
      image: "assets/5rasana.png",
      title: "سكاشن خرسانة",
      subTitle: "ملخص سكاشن خرسانة 2022/2023",
      university: "Mansoura",
      type: "Free"),
  ItemModel(
      image: "assets/CSPrgrams.png",
      title: "CS programs'",
      subTitle: "all programs for cs department.",
      university: "CS, Tanta",
      type: "Free"),
  ItemModel(
      image: "assets/CSPrgrams.png",
      title: "CS programs'",
      subTitle: "all programs for cs department.",
      university: "CS, Tanta",
      type: "Free"),
  ItemModel(
      image: "assets/IT Programs.png",
      title: "IT programs'",
      subTitle: "all programs for it department.",
      university: "Tanta",
      type: "Free"),
  ItemModel(
      image: "assets/IT Programs.png",
      title: "IT programs'",
      subTitle: "all programs for it department.",
      university: "CS, Tanta",
      type: "Free"),
];

List<ItemModel> programsItem = [
  ItemModel(
      image: "assets/visual studio.png",
      title: "Visual studio",
      subTitle: "visual studio program",
      university: "IT&CS ,Tanta",
      type: "Free")
];
List<ItemModel> sectionsItem = [
  ItemModel(
      image: "assets/ITSection.png",
      title: "IT Sections",
      subTitle: "Sections summary for it department",
      university: "IT, Tanta",
      type: "Free"),
  ItemModel(
      image: "assets/CSSection.png",
      title: "CS Sections",
      subTitle: "Sections summary for cs department",
      university: "CS, Tanta",
      type: "Free"),
  ItemModel(
    image: "assets/5rasana.png",
    title: "سكاشن خرسانة",
    subTitle: "ملخص سكاشن خرسانة 2022/2023",
    university: "Mansoura",
    type: "Free",
    faculty: "هندسة",
  ),
  ItemModel(
    image: "assets/pharma.png",
    title: "Pharma Summary",
    subTitle: "Farma Sections summary.",
    university: "Monofia",
    type: "Free",
    faculty: "صيدلة",
  ),
  ItemModel(
      image: "assets/AI Sec.png",
      title: "AI Sections ",
      subTitle: "Sections summary for AI department",
      university: "AI, Tanta",
      type: "Free"),
  ItemModel(
    image: "assets/5rasana.png",
    title: "سكاشن خرسانة",
    subTitle: "ملخص سكاشن خرسانة 2022/2023",
    university: "Mansoura",
    type: "Free",
    faculty: "هندسة",
  ),
  ItemModel(
      image: "assets/CSSection.png",
      title: "CS Sections",
      subTitle: "Sections summary for cs department",
      university: "CS, Tanta",
      type: "Free"),
  ItemModel(
      image: "assets/IS Sec.png",
      title: "IS Sections",
      subTitle: "Sections summary for IS department",
      university: "IS, Tanta",
      type: "Free"),
];
List<ItemModel> lecturesItem = [
  ItemModel(
    image: "assets/it.png",
    title: "IT Lectures",
    subTitle: "Lectures summary for it department",
    university: "Tanta",
    type: "Free",
    faculty: "حاسبات ومعلومات",
  ),
  ItemModel(
    image: "assets/CS Section.png",
    title: "CS Lectures",
    subTitle: "Lectures summary for cs department",
    university: "Tanta",
    type: "Free",
    faculty: "حاسبات ومعلومات",
  ),
  ItemModel(
    image: "assets/AI Lec.png",
    title: "AI Lectures",
    subTitle: "Lectures summary for it department",
    university: "Tanta",
    type: "Free",
    faculty: "حاسبات ومعلومات",
  ),
];

List<ItemNavigationModel> itemNavigationBar=[
  ItemNavigationModel(icon: "assets/person.svg", title: "الحساب"),
  ItemNavigationModel(icon: "assets/advertise.svg", title: "إعلاناتي"),
  ItemNavigationModel(icon: "assets/add.svg", title: "إضافة"),
  ItemNavigationModel(icon: "assets/chat.svg", title: "محادثاتي"),
  ItemNavigationModel(icon: "assets/homepage.svg", title: "الصفحة الرئيسية"),
];
