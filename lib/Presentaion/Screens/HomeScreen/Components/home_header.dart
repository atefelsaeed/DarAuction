import '../../../../MainImports/main_imports.dart';
import '../../../Widgets/custom_text_form.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: MyTextForm(
            prefixIcon: Image.asset("assets/images/Vector.png"),
            controller: emailController,
            label: 'Search products',
            fileWidth: width(context) - 60,
            keyboardType: TextInputType.emailAddress,
            isPassword: false,
          ),
        ),
        AppSize.spaceWidth3(context),
        Stack(
          alignment: Alignment.topRight,
          children: [
            CircleAvatar(
              child: Padding(
                  padding: EdgeInsets.all(AppSize.padding2(context)),
                  child: Image.asset(
                    "assets/images/Vector (Stroke).png",
                  )),
              backgroundColor: ColorManager.wight,
              radius: AppSize.borderRadius25(context),
            ),
            CircleAvatar(
              backgroundColor: ColorManager.primaryColor,
              radius: 5,
            )
          ],
        )
      ],
    );
  }
}
