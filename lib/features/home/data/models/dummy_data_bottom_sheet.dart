import '../../../../core/utils/icons.dart';

class Category {
  final int id;
  final String name;
  final String iconImage;
  final String countExperts;

  Category({
    required this.id,
    required this.name,
    required this.iconImage,
    required this.countExperts,
  });
}

List<Category> categoryData = [
  Category(
    id: 1,
    name: "Information Technology",
    iconImage: infoIcon,
    countExperts: "23",
  ),
  Category(
    id: 2,
    name: "Supply Chain",
    iconImage: supplyIcon,
    countExperts: "12",
  ),
  Category(
    id: 3,
    name: "Security",
    iconImage: secureIcon,
    countExperts: "23",
  ),
  Category(
    id: 4,
    name: "Human Resource",
    iconImage: infoIcon,
    countExperts: "8",
  ),
  Category(
    id: 5,
    name: "Immigration",
    iconImage: immigrationIcon,
    countExperts: "18",
  ),
  Category(
    id: 6,
    name: "Translation",
    iconImage: translatinIcon,
    countExperts: "3",
  ),
];
