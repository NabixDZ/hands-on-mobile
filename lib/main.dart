

import 'package:flutter/material.dart';
import 'myProvider.dart';
import 'salah/di.dart';
import 'salah/viewmodels/login_viewmodel.dart';
import 'salah/viewmodels/register_viewmodel.dart';
import 'salah/viewmodels/user_viewmodel.dart';
import 'screens/Layout.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/pageView/p_view.dart';
import 'package:provider/provider.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await initDI();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.debugCheckInvalidValueType = null;


    return MultiProvider(
        providers: [
          Provider(create: (_) => MyProvider()),
          Provider<UserViewModel>(create: (_)=>UserViewModel(instance())),
          Provider<LoginViewModel>(create: (_)=>LoginViewModel(instance())),
          Provider<RegisterViewModel>(create: (_)=>RegisterViewModel(instance())),
        ],
        builder: (context, child) {
          final UserViewModel userViewModel = Provider.of<UserViewModel>(context);

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: 'Outfit',
            ),
            //home: PostPage(),
            title: 'Flutter App',
            home:  userViewModel.authenticated
                ?  LayoutScreen()
                : (userViewModel.showOnBoarding
                ?  Page_View()
                : const LoginScreen()
            ),
          );
        });
  }
}

