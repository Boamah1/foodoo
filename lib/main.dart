import 'package:foodoo/hooks/export.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.delayed(const Duration(seconds: 3));
  FlutterNativeSplash.remove();

  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;
  runApp(
    MyApp(showHome: showHome),
  );
}

class MyApp extends StatelessWidget {
  final bool? showHome;
  const MyApp({
    Key? key,
    this.showHome,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              brightness: Brightness.light, primarySwatch: Colors.grey),
          darkTheme: ThemeData(
              brightness: Brightness.dark, primarySwatch: Colors.grey),
          themeMode: ThemeMode.light,
          home:
              // Seafood()
              // CartPage()
              // OrderPage(),
              // HomePage(),
              // Verification(),
              // OnbordingScreen(),
              // ChangePassword(),
              // IntroPage1(),
              // ForgetPassword(),
              // SignUp(),
              showHome! ? const Login() : const OnbordingScreen(),
        );
      },
    );
  }
}
