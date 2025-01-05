import 'package:astroo_store_app/core/shared/widgets/custom_linear_button.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:astroo_store_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class LightModeAndLanguage extends StatelessWidget {
  const LightModeAndLanguage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: CustomLinearButton(
            onPressed: () {},
            child: Icon(
              Icons.sunny,
              size: 19,
              color: Colors.white,
            ),
          ),
        ),
        Spacer(
          flex: 3,
        ),
        Expanded(
          flex: 2,
          child: CustomLinearButton(
            onPressed: () {},
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
            child: Text(
              S.of(context).language,
              style: AppTextStyles.font14Bold(context),
            ),
          ),
        ),
      ],
    );
  }
}
