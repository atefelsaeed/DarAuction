import '../../../../MainImports/main_imports.dart';
import '../../../../Resources/assets_manager.dart';
import '../../../../Resources/routes_manager.dart';
import '../../../Widgets/navigate_to.dart';
import '../Widgets/onBoarding_main_page.dart';

class OnBoardingData {
  static var boardController = PageController();
  static var sliderController = PageController();

  static bool isLast = false;
  static bool isFirst = false;

  static List productSlider = [];
  static List sliderImages = [
    ImageAssets.product0,
    ImageAssets.product1,
    ImageAssets.product2,
  ];
  static List screens = [
    const OnBoardingMainPage(
      title: 'Find Your Doctor',
      description: '',
      img: ImageAssets.onBoarding,
    ),
    const OnBoardingMainPage(
      title: 'Order Your Medicine',
      description: '',
      img: ImageAssets.onBoarding,
    ),
    const OnBoardingMainPage(
      title: 'Find Your Lab',
      description: '',
      img: ImageAssets.onBoarding,
    ),
  ];

  static void submit(context) {
    // DataStorage.writeData('onBoarding', true);

    Navigation.navigateWithName(context, Routes.homeRoute);
  }
}
