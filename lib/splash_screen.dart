import 'package:foodoo/hooks/export.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 20),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OnbordingScreen(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TextStyle foodootitleStyle =
    //     Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 30);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Container(
              height: 160,
              width: 140,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/Do vegetables fly_!.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              "Foodoo",
              style: TextStyle(
                fontFamily: "Lobster Two",
                fontSize: 35.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Spacer(),
            // Text(
            //   "Design by Bighead✌🏿",
            //   style: GoogleFonts.playfairDisplay(color: Colors.black),
            // ),
          ],
        ),
      ),
    );
  }
}
