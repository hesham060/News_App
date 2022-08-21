import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/modules/business_screen/business_screen.dart';
import 'package:newsapp/modules/science_screen/science_screen.dart';
import 'package:newsapp/modules/spors_screen/sports_screen.dart';
import 'package:newsapp/shared/cubit/states.dart';
import 'package:flutter/material.dart';

class NewCubit extends Cubit<AppStates> {
  NewCubit() : super(InitailAppState());
  static NewCubit get(Context) => BlocProvider.of(Context);
  int currentIndex = 0;
  List<BottomNavigationBarItem> itemsBottom = const [
    BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Bussiness'),
    BottomNavigationBarItem(icon: Icon(Icons.sports), label: 'sports'),
    BottomNavigationBarItem(icon: Icon(Icons.science), label: 'science'),
  ];

  List<Widget> Screens = [BusinessScreen(), SportsScreen(), ScienceScreen()];
  void changeBottomNavBar({required int index}) {
    currentIndex = index;
    emit(AppChangeBottomNavBar());
  }
}
