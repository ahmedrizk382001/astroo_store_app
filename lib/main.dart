import 'package:astroo_store_app/astroo_shop_app.dart';
import 'package:astroo_store_app/core/helpers/bloc_observer.dart';
import 'package:astroo_store_app/core/helpers/shared_pref/shared_pref.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await SharedPref.init();

  runApp(const AstrooShopApp());
}
