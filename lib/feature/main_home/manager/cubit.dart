import 'package:bloc/bloc.dart';
import 'package:find_me_iti/feature/main_home/manager/state.dart';


class AppCubit extends Cubit<AppState> {
  AppCubit() : super(InitialState());
  bool heart = false;
  bool is_available = false;

  void choosenHeart() {
    heart = !heart;
    isavailable();
    emit(ChoosenFavouriteColor());
  }

  void isavailable() {
    is_available = heart;
    emit(ChoosenFavouriteColor());
  }
}
