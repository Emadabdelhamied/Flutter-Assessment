import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/dummy_data_home.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  void setIsFavorite({required int itemId}) {
    emit(SetFavourite());
    var existingIndex =
        recomendExpertData.indexWhere((element) => element.id == itemId);
    if (recomendExpertData[existingIndex].isFavorite == false) {
      recomendExpertData[existingIndex].isFavorite = true;
      emit(AddedToFavourite());
    } else {
      recomendExpertData[existingIndex].isFavorite = false;
      emit(AddedToFavourite());
    }
  }
}
