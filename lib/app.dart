import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jonathan/app_view.dart';
import 'package:jonathan/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:jonathan/screens/auth/welcome_screen.dart';
import 'package:user_repository/user_repository.dart';

class MyApp extends StatelessWidget {
  const MyApp(this.userRepository, {super.key});

  final UserRepository userRepository;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RepositoryProvider(
      create: (context) => AuthenticationBloc(userRepository: userRepository),
      child: WelcomeScreen()

      //MyAppView(),
    );
  }


}