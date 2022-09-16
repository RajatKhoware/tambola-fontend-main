import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:tambola_frontend/providers/user_provider.dart';
import 'package:tambola_frontend/screens/AddMoney/add_money_page.dart';
import 'package:tambola_frontend/screens/AddMoneyCard/add_money_card.dart';
import 'package:tambola_frontend/screens/Game/tambola_board.dart';
import 'package:tambola_frontend/screens/Login/login_screen.dart';
import 'package:tambola_frontend/screens/PlayRoom/select_room_screen.dart';
import 'package:tambola_frontend/screens/SignUp_Screens/sign_up_screen_1.dart';
import 'package:tambola_frontend/screens/SignUp_Screens/sign_up_screen_2.dart';
import 'package:tambola_frontend/screens/SignUp_Screens/sign_up_screen_3.dart';
import 'package:tambola_frontend/screens/SignUp_Screens/sign_up_screen_4.dart';
import 'package:tambola_frontend/services/auth_service.dart';
import 'package:tambola_frontend/widgets/navbar/new_nav_bar.dart';

import 'models/user.dart';

Widget _initialHomeRoute = AddMoneyCard();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      //code for web app
      //    options: FirebaseOptions(
      //   apiKey: "XXX",
      //   appId: "XXX",
      //   messagingSenderId: "XXX",
      //   projectId: "XXX",
      // )
      );
  bool result = await AuthService.isLoggedIn();
  if (result) {
    _initialHomeRoute = const SelectRoomScreen();
  }
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => UserProvider()),
      ChangeNotifierProvider<User>(create: (_) => User()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tambola',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': ((context) => _initialHomeRoute),
        '/login': ((context) => const LoginScreen()),
        '/select-room': (context) => const SelectRoomScreen(),
        '/add-money': ((context) => const AddMoneyScreen()),
        '/play-game': ((context) => const TambolaBoard()),
        '/bottom-bar': ((context) => const NewNavBar()),
        '/sign-up-1': (context) => const NewSignUpScreen(),
        '/sign-up-2': ((context) => const NewSignUpScreen2()),
        '/sign-up-3': ((context) => const NewSignUpScreen3()),
        '/sign-up-4': ((context) => const NewSignUpScreen4()),
      },
    );
  }
}
