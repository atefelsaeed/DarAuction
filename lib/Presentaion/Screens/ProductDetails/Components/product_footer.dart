import 'package:dar_auction/Presentaion/Screens/ProductDetails/Components/buy_now_section.dart';
import 'package:dar_auction/Presentaion/Screens/ProductDetails/Components/product_descriptions.dart';
import 'package:dar_auction/Presentaion/Screens/ProductDetails/Components/product_rate.dart';
import 'package:dar_auction/Presentaion/Screens/ProductDetails/Components/select_product_color.dart';
import 'package:dar_auction/Presentaion/Widgets/custom_button.dart';

import '../../../../MainImports/main_imports.dart';

class ProductFooter extends StatelessWidget {
  const ProductFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(context) * .25,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: ColorManager.wight,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSize.spaceHeight3(context),
            const ProductRate(),
            const ProductDescriptions(),
            const SelectProductColor(),
            const BuyNowSection(),
            AppSize.spaceHeight3(context),
          ],
        ),
      ),
    );
  }
}
