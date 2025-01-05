import 'package:astroo_store_app/core/styles/theme/color_extension.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  ColorExtension get color => Theme.of(this).extension<ColorExtension>()!;
}
