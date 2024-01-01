import 'dart:io';
import 'package:riverpod/riverpod.dart';

import '../models/place.dart';

class UserPlaceNotifier extends StateNotifier<List<Place>> {
  UserPlaceNotifier() : super(const []);

  void addPlaces(String title, File image) {
    final newPlace = Place(title: title, image: image);
    state = [newPlace, ...state];
  }
}

final userPlacesProvider =
    StateNotifierProvider<UserPlaceNotifier, List<Place>>(
        (ref) => UserPlaceNotifier());
