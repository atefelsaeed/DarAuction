import 'package:dar_auction/MainImports/main_imports.dart';
import 'package:dar_auction/Presentaion/PaymentScreen/payment_screen.dart';
import 'package:dar_auction/Presentaion/Screens/ProductDetails/product_details_screen.dart';
import 'package:dar_auction/Presentaion/Widgets/navigate_to.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'Cubit/cubit.dart';
import 'Cubit/states.dart';

class HomeDashBoard extends StatefulWidget {
  const HomeDashBoard({Key? key}) : super(key: key);

  @override
  State<HomeDashBoard> createState() => _HomeDashBoardState();
}

class _HomeDashBoardState extends State<HomeDashBoard> {
  int _currentIndex = 0;

  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<SalomonBottomBarItem> bottomItems = [
      SalomonBottomBarItem(
        icon: const Icon(
          Icons.home,
        ),
        title: const Text("Home"),
        selectedColor: ColorManager.primaryColor,
        unselectedColor: ColorManager.greyColor100,
      ),
      SalomonBottomBarItem(
        icon: InkWell(
          onTap: () {
            Navigation.navigateTo(context, const PaymentScreen());
          },
          child: const Icon(
            Icons.shopping_bag_outlined,
          ),
        ),
        title: const Text("Cart"),
        selectedColor: ColorManager.primaryColor,
        unselectedColor: ColorManager.greyColor100,
      ),
      SalomonBottomBarItem(
        icon: const Icon(Icons.favorite_border),
        title: const Text("Favorite"),
        selectedColor: ColorManager.primaryColor,
        unselectedColor: ColorManager.greyColor100,
      ),
      SalomonBottomBarItem(
        icon: const Icon(
          Icons.person,
        ),
        title: const Text("Profile"),
        selectedColor: ColorManager.primaryColor,
        unselectedColor: ColorManager.greyColor100,
      ),
    ];

    return BlocProvider(
      create: (context) => HomeDashBoardCubit(),
      child: BlocBuilder<HomeDashBoardCubit, HomeDashBoardStates>(
        builder: (context, state) {
          HomeDashBoardCubit cubit = HomeDashBoardCubit.get(context);
          return Scaffold(
              body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              cubit.screens[_currentIndex],
              Container(
                decoration: BoxDecoration(
                    color: ColorManager.wight95,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                height: height(context) * .15,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                  child: SalomonBottomBar(
                    currentIndex: _currentIndex,
                    onTap: (i) => setState(() => _currentIndex = i),
                    items: bottomItems,
                  ),
                ),
              )
            ],
          ));
        },
      ),
    );
  }
}
