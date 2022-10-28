import 'package:dar_auction/Models/ServiceModels/products_model.dart';
import 'package:dar_auction/Presentaion/Screens/ProductDetails/Components/buy_now_section.dart';
import 'package:dar_auction/Presentaion/Screens/ProductDetails/Components/product_descriptions.dart';
import 'package:dar_auction/Presentaion/Screens/ProductDetails/Components/product_rate.dart';
import 'package:dar_auction/Presentaion/Screens/ProductDetails/Components/select_product_color.dart';

import '../../../../Data/API/homedata.dart';
import '../../../../MainImports/main_imports.dart';

class ProductFooter extends StatelessWidget {
   ProductFooter({Key? key, required this.products}) : super(key: key);
final Products products;

  @override
  Widget build(BuildContext context) {
    HomePageData.products=products;
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
