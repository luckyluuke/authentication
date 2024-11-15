import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jonathan/app.dart';
import 'package:jonathan/app_view.dart';
import 'package:jonathan/simple_bloc_observer.dart';
import 'package:user_repository/user_repository.dart';


Future<void> main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  Bloc.observer = SimpleBlocObserver();
  runApp(MyAppView()
      /*MyApp(FirebaseUserRepo())*/
  );
}


