import '../../../../MainImports/main_imports.dart';

class ProductDescriptions extends StatelessWidget {
  const ProductDescriptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSize.spaceHeight1(context),
        Text(
          'Sony WH-1000XM4',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: FontSize.textS20(context),
              fontStyle: FontStyle.italic),
        ),
        AppSize.spaceHeight1(context),
        Text(
          'The intuitive and intelligent WH-1000XM4 headphones bring you new improvements in industry-leading noise cancelling technology.',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: FontSize.textS16(context),
            color: ColorManager.greyColor100,
          ),
        ),
      ],
    );
  }
}
