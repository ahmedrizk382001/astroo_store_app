import 'package:astroo_store_app/core/shared/widgets/custom_linear_button.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:flutter/material.dart';

class AddCategoryButton extends StatelessWidget {
  const AddCategoryButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Add a new category",
          style: AppTextStyles.font18Medium(context),
        ),
        Spacer(),
        Expanded(
          child: CustomLinearButton(
              onPressed: () {},
              child: Text(
                "Add",
                style: AppTextStyles.font18Medium(context),
              )),
        )
      ],
    );
  }
}
