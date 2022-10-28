import 'package:dar_auction/Presentaion/Screens/HomeDashBoard/Cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../../../MainImports/main_imports.dart';
import '../../../Widgets/navigate_to.dart';
import '../../HomeScreen/home_screen.dart';

class HomeDashBoardCubit extends Cubit<HomeDashBoardStates> {
  HomeDashBoardCubit() : super(HomeDashBoardInitialState());

  static HomeDashBoardCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> screens = [
    const HomeScreen(),
    Container(),
    Container(),
    Container()
  ];

  void changeBottomNavBar(int index) {
    currentIndex = index;
    emit(HomeDashBoardBottomNavState());
  }
}
