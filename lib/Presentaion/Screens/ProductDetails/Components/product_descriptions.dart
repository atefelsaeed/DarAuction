import '../../../../Data/API/homedata.dart';
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
          HomePageData.products.title,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: FontSize.textS20(context),
              fontStyle: FontStyle.italic),
        ),
        AppSize.spaceHeight1(context),
        Text(
          HomePageData.products.description,
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
