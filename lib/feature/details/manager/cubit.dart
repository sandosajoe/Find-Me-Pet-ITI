import 'package:bloc/bloc.dart';
import 'package:find_me_iti/feature/details/manager/state.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class FavouriteCubit extends Cubit<FavouriteState> {
  Map<String, bool> favorites = {};
  Map<String, bool> done = {};

  FavouriteCubit() : super(InitialState()) {
    loadPreferences();
  }

  void toggleFavorite(String dogName) {
    favorites[dogName] = !(favorites[dogName] ?? false);
    savePreferences();
    emit(ChoosenFavouriteColor());
  }

  bool isFavorite(String dogName) {
    return favorites[dogName] ?? false;
  }
  Future<void> savePreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final favoritesJson = jsonEncode(favorites);
    await prefs.setString('favorites', favoritesJson);
  }

  Future<void> loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final favoritesJson = prefs.getString('favorites');
    if (favoritesJson != null) {
      favorites = Map<String, bool>.from(jsonDecode(favoritesJson));
    }
    emit(ChoosenFavouriteColor());
  }
}
/*class AppCubit extends Cubit<AppState> {
  AppCubit() : super(InitialState());
  bool heart = false;
  bool is_available = false;
  bool add=false;

  void choosenHeart() {
    heart = !heart;
    isavailable();
    emit(ChoosenFavouriteColor());
  }

  void isavailable() {
    is_available = heart;
    emit(ChoosenFavouriteColor());
  }
  void is_added() {
    add=true;
    emit(AnimalsAdded());
  }
}*/