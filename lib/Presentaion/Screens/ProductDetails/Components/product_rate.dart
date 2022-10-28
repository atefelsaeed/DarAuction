import '../../../../MainImports/main_imports.dart';

class ProductRate extends StatelessWidget {
  const ProductRate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          'FREE SHIPPING',
          style: TextStyle(color: ColorManager.greyDarkColor),
        ),
        const Spacer(),
        Icon(
          Icons.star_rate_rounded,
          color: ColorManager.rate,
        ),
        Text(
          '4.8 ',
          style: TextStyle(color: ColorManager.greyDarkColor),
        ),
        Text(
          '(231)',
          style: TextStyle(color: ColorManager.greyDarkColor),
        )
      ],
    );
  }
}
