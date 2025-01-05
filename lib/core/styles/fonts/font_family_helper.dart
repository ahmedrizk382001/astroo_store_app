import 'package:intl/intl.dart';

class FontFamilyHelper {
  FontFamilyHelper._();
  static const String cairoArabic = 'Cairo';
  static const String poppinsEnglish = 'Poppins';

  static String getFontFamily() {
    if (Intl.getCurrentLocale() == 'en') {
      return poppinsEnglish;
    } else {
      return cairoArabic;
    }
  }
}
