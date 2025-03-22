class Trip {
  final String id;
  final String title;
  final String imageUrl;
  final List<String> galleryImages;
  final double price;
  final double rating;
  final int reviewCount;
  final String summary;
  final List<String> includes;
  final List<String> excludes;
  final String termsAndConditions;
  final int minPax;
  final int maxPax;
  final bool isPrivateTrip;

  Trip({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.galleryImages,
    required this.price,
    required this.rating,
    required this.reviewCount,
    required this.summary,
    required this.includes,
    required this.excludes,
    required this.termsAndConditions,
    required this.minPax,
    required this.maxPax,
    required this.isPrivateTrip,
  });
} 