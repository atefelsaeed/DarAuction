import 'package:dar_auction/Presentaion/Screens/HomeScreen/Components/home_categories.dart';
import 'package:dar_auction/Presentaion/Screens/HomeScreen/Components/home_header.dart';
import 'package:dar_auction/Presentaion/Screens/HomeScreen/Components/hot_sales.dart';
import 'package:dar_auction/Presentaion/Screens/HomeScreen/Components/some_products.dart';
import 'package:dar_auction/Presentaion/Screens/HomeScreen/cubit/cubit.dart';
import 'package:dar_auction/Presentaion/Screens/HomeScreen/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../MainImports/main_imports.dart';
import '../../../Resources/assets_manager.dart';
import '../../Widgets/custom_button.dart';
import '../../Widgets/custom_text_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(AppSize.padding2(context)),
          height: height(context),
          width: width(context),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(ImageAssets.splashBackground),
                  fit: BoxFit.fill)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppSize.spaceHeight2(context),
                const HomeHeader(),
                AppSize.spaceHeight1(context),
                Image.asset("assets/images/Layer 1 (2).png"),
                const HomeCategories(),
                AppSize.spaceHeight1(context),
                Text('Hot sales',
                    style: TextStyle(
                      color: ColorManager.blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: FontSize.textS18(context),
                    )),
                AppSize.spaceHeight1(context),
                const HotSales(),
                AppSize.spaceHeight2(context),
                Text('Technology',
                    style: TextStyle(
                      color: ColorManager.blackColor,
                      fontWeight: FontWeight.w800,
                      fontSize: FontSize.textS18(context),
                    )),
                AppSize.spaceHeight1(context),
                const SomeProducts(),
                AppSize.spaceHeight12(context),
                AppSize.spaceHeight6(context),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
