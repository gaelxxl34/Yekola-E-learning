import 'package:authentification/firebase_options.dart';
import 'package:authentification/src/features/authentification/screens/dashboard_screen/dashboard.dart';
import 'package:authentification/src/features/authentification/screens/splash_screen/spalsh_screen.dart';
import 'package:authentification/src/features/authentification/screens/welcome/welcome.dart';
import 'package:authentification/src/repository/authentification_repository/authentification_repository.dart';
import 'package:authentification/src/utils/theme/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthentificationRepository()));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var auth = FirebaseAuth.instance;
  var isLogin = false;

  checkIfLogin() async {
    auth.authStateChanges().listen((User? user) {
      if(user != null && mounted){
        setState(() {
          isLogin = true;
        });
      }
    });
  }

  @override
  void initState() {
    checkIfLogin();
    super.initState();
  }


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: GaelTheme.lighttheme,
        darkTheme: GaelTheme.darktheme,
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
        home: isLogin ?  const Dashboard() :  const welcome(),
    );
  }
}
