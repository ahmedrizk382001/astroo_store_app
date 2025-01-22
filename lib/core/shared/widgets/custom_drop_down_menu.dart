import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropDownMenu extends StatelessWidget {
  const CustomDropDownMenu({
    required this.items,
    required this.hintText,
    required this.onChanged,
    required this.value,
    super.key,
  });
  final String hintText;
  final List<String> items;
  final ValueChanged<String?> onChanged;
  final String? value;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        border: Border.all(
          color: context.color.bluePinkLight!,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          iconSize: 30.sp,
          borderRadius: BorderRadius.circular(16.r),
          dropdownColor: context.color.bluePinkDark,
          style: AppTextStyles.font14Medium(context),
          elevation: 16,
          icon: const Icon(
            Icons.expand_more,
            color: Colors.white,
          ),
          onChanged: onChanged,
          value: items.isNotEmpty ? value : null,
          isExpanded: true,
          hint: Text(
            hintText,
            style: AppTextStyles.font14Medium(context),
          ),
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              onTap: () {},
              value: value,
              child: Text(
                value,
                style: AppTextStyles.font14Medium(context),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
