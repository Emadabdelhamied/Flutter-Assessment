import '../../../../core/utils/images.dart';

class RecomendExpert {
  final int? id;
  final String? name;
  final double? rate;
  final String? category;
  final String? image;
  bool? isFavorite;

  RecomendExpert({
    this.id,
    this.name,
    this.rate,
    this.category,
    this.image,
    this.isFavorite,
  });
}

class OnlineExpert {
  final int? id;
  final String? name;
  final String? image;
  final bool? isOnLine;

  OnlineExpert({this.id, this.name, this.image, this.isOnLine});
}

List<OnlineExpert> onLineExpertData = [
  OnlineExpert(
    id: 1,
    name: "Lance",
    image: manImage,
    isOnLine: true,
  ),
  OnlineExpert(
    id: 2,
    name: "Niles",
    image: womanImage,
    isOnLine: true,
  ),
  OnlineExpert(
    id: 3,
    name: " Samuel",
    image: womanImage,
    isOnLine: false,
  ),
  OnlineExpert(
    id: 4,
    name: "Hilary",
    image: womanImage,
    isOnLine: true,
  ),
  OnlineExpert(
    id: 5,
    name: "Khadiga",
    image: womanImage,
    isOnLine: true,
  ),
  OnlineExpert(
    id: 6,
    name: "Jon",
    image: womanImage,
    isOnLine: true,
  ),
  OnlineExpert(
    id: 7,
    name: "Bebo",
    image: womanImage,
    isOnLine: true,
  ),
  OnlineExpert(
    id: 8,
    name: "Ahmed",
    image: womanImage,
    isOnLine: true,
  ),
  OnlineExpert(
    id: 9,
    name: "Emad",
    image: womanImage,
    isOnLine: true,
  ),
];

List<RecomendExpert> recomendExpertData = [
  RecomendExpert(
    id: 1,
    name: "Dr. Lance Bogrol",
    category: "Supply Chain",
    rate: 3.5,
    image: manImage,
    isFavorite: true,
  ),
  RecomendExpert(
    id: 2,
    name: "Dr. Niles Pepprtrout",
    category: "Security",
    rate: 4.8,
    image: womanImage,
    isFavorite: false,
  ),
  RecomendExpert(
    id: 3,
    name: "Dr. Niles",
    category: "Security",
    rate: 1.8,
    image: manImage,
    isFavorite: false,
  ),
  RecomendExpert(
    id: 4,
    name: "Dr. Niles",
    category: "Security",
    rate: 2.8,
    image: womanImage,
    isFavorite: false,
  ),
];
