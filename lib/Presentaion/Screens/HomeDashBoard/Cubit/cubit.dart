import 'package:dar_auction/Presentaion/Screens/HomeDashBoard/Cubit/states.dart';
import 'package:dar_auction/Presentaion/Screens/ProductDetails/product_details_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../MainImports/main_imports.dart';
import '../../../../Resources/assets_manager.dart';
import '../../HomeScreen/home_screen.dart';

class HomeDashBoardCubit extends Cubit<HomeDashBoardStates> {
  HomeDashBoardCubit() : super(HomeDashBoardInitialState());

  static HomeDashBoardCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.home_outlined,
        ),
        label: 'Home'),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.favorite_border,
        ),
        label: 'Favorite'),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.featured_play_list_outlined,
        ),
        label: 'Personal Profile'),
    BottomNavigationBarItem(
        icon: Container(
          color: Colors.blue.shade500,
          child: Row(
            children: const [
              Icon(
                Icons.shopping_cart_outlined,
              ),
              Text('Cart'),
            ],
          ),
        ),
        label: ''),
  ];

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
