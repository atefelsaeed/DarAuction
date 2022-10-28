import 'package:dar_auction/Presentaion/Widgets/custom_button.dart';

import '../../../../MainImports/main_imports.dart';
import 'draw_dashed_line.dart';

class PaymentFooter extends StatelessWidget {
  const PaymentFooter({Key? key}) : super(key: key);

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
            Row(
              children: const [
                Text(
                  'Subtotal (2 items)',
                ),
                Spacer(),
                Text('\$ 2,999')
              ],
            ),
            AppSize.spaceHeight1(context),
            Row(
              children: const [
                Text(
                  'Shipping cost',
                ),
                Spacer(),
                Text('Free')
              ],
            ),
            AppSize.spaceHeight1(context),
            CustomPaint(painter: DrawDottedhorizontalline()),
            AppSize.spaceHeight1(context),
            Row(
              children: const [
                Text(
                  'Total',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                Spacer(),
                Text(
                  '\$ 2,999',
                  style: TextStyle(fontWeight: FontWeight.w700),
                )
              ],
            ),
            AppSize.spaceHeight2(context),
            DefaultButton(
              function: () {
                // Navigation.navigateTo(context, const PaymentScreen());
              },
              isWidget: true,
              // btnWidth: width(context) * .4,
              btnHeight: height(context) * .07,
              text: 'Finalize Purchase',
              background: ColorManager.primaryColor,
              textColor: ColorManager.wight,
              fontSize: FontSize.textS18(context),
            ),
            AppSize.spaceHeight3(context),
          ],
        ),
      ),
    );
  }
}
