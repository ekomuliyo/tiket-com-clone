import 'package:flutter/foundation.dart';
import '../models/trip.dart';

class TripProvider with ChangeNotifier {
  final List<Trip> _trips = [
    Trip(
      id: '1',
      title: 'Mount Bromo Sunrise Tour',
      imageUrl: 'https://images.unsplash.com/photo-1589308078059-be1415eab4c3',
      galleryImages: [
        'https://images.unsplash.com/photo-1589308078059-be1415eab4c3',
        'https://images.unsplash.com/photo-1589308078059-be1415eab4c3',
        'https://images.unsplash.com/photo-1589308078059-be1415eab4c3',
      ],
      price: 1500000,
      rating: 4.8,
      reviewCount: 128,
      summary: 'Experience the breathtaking sunrise at Mount Bromo, one of Indonesia\'s most iconic volcanoes. This tour includes jeep rides, hiking, and breakfast with a view.',
      includes: [
        'Hotel pickup and drop-off',
        'Jeep transportation',
        'English speaking guide',
        'Breakfast',
        'Entrance fees',
      ],
      excludes: [
        'Personal expenses',
        'Travel insurance',
        'Additional meals',
      ],
      termsAndConditions: '''
- Minimum 2 persons required for booking
- Children under 5 are not recommended for this tour
- Cancellation policy: Full refund if cancelled 72 hours before the trip
- Wear warm clothes and comfortable shoes
      ''',
      minPax: 2,
      maxPax: 15,
      isPrivateTrip: false,
    ),
    Trip(
      id: '2',
      title: 'Private Bali Temple Tour',
      imageUrl: 'https://images.unsplash.com/photo-1558005530-a7958896ec60',
      galleryImages: [
        'https://images.unsplash.com/photo-1558005530-a7958896ec60',
        'https://images.unsplash.com/photo-1558005530-a7958896ec60',
        'https://images.unsplash.com/photo-1558005530-a7958896ec60',
      ],
      price: 2500000,
      rating: 4.9,
      reviewCount: 256,
      summary: 'Discover the spiritual heart of Bali with a private tour of the island\'s most sacred temples. Visit Tanah Lot, Uluwatu, and other iconic temples with your personal guide.',
      includes: [
        'Private car with AC',
        'Professional guide',
        'Entrance fees',
        'Bottled water',
        'Traditional dance show',
      ],
      excludes: [
        'Meals',
        'Personal expenses',
        'Tips for guide',
      ],
      termsAndConditions: '''
- Flexible departure time
- Proper temple attire required
- Full refund for cancellation 48 hours prior
- Price is per car (max 4 persons)
      ''',
      minPax: 1,
      maxPax: 4,
      isPrivateTrip: true,
    ),
  ];

  List<Trip> get trips => [..._trips];

  Trip findById(String id) {
    return _trips.firstWhere((trip) => trip.id == id);
  }
} 