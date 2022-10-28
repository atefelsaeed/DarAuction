import 'package:dar_auction/Presentaion/PaymentScreen/Components/payment_footer.dart';
import 'package:dar_auction/Presentaion/PaymentScreen/Components/payment_header.dart';
import 'package:dar_auction/Presentaion/PaymentScreen/Components/product_data.dart';

import '../../MainImports/main_imports.dart';
import '../../Resources/assets_manager.dart';
import 'Components/shipping_method.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: height(context),
              width: width(context),
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageAssets.splashBackground),
                  fit: BoxFit.fill,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const PaymentHeader(),
                    AppSize.spaceHeight1(context),
                    const ProductData(),
                    const ShippingMethod(),
                  ],
                ),
              ),
            ),
            const PaymentFooter()
          ],
        ),
      ),
    );
  }
}
