class Sight {
  final String name;
  final double lat;
  final double lon;
  final String url;
  final String details;
  final String type;

  Sight(
    this.name,
    this.lat,
    this.lon,
    this.url,
    this.details,
    this.type,
  );
}

// class Place {
//   final int id;
//   final double lat;
//   final double lon;
//   final String name;
//   final List<String> urls;
//   final String placeType;
//   final String description;
//   bool isFavorite;

//   Place({
//     required this.id,
//     required this.lat,
//     required this.lon,
//     required this.name,
//     required this.urls,
//     required this.placeType,
//     required this.description,
//     this.isFavorite = false,
//   });

//   @override
//   String toString() {
//     return 'Название: $name. Тип: $placeType. Ширина: $lat. Долгота: $lon.';
//   }
// }
