import 'package:foodoo/hooks/export.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  TextController textController = TextController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: textController.pagecontroller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmoothPageIndicator(
                  controller: textController.pagecontroller,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Color(0xff734923),
                    dotWidth: 12,
                    dotHeight: 7,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 330.h),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 610),
              child: Column(
                children: [
                  onLastPage
                      ? SizedBox(
                          height: 50,
                          width: 140,
                          child: TextButton(
                            onPressed: () async {
                              final prefs =
                                  await SharedPreferences.getInstance();
                              prefs.setBool('showHome', true);
                              Navigator.pushReplacement(
                                (context),
                                MaterialPageRoute(
                                  builder: (context) => const Login(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey[350],
                              onPrimary: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(27),
                              ),
                            ),
                            child: const Text(
                              "Get Started",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      : SizedBox(
                          height: 50,
                          width: 140,
                          child: TextButton(
                            onPressed: () {
                              textController.pagecontroller.nextPage(
                                duration: const Duration(seconds: 1),
                                curve: Curves.easeIn,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey[350],
                              onPrimary: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(27),
                              ),
                            ),
                            child: const Text(
                              "Next",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                  SizedBox(height: 20.h),
                  onLastPage
                      ? const SizedBox()
                      : Center(
                          child: InkWell(
                            onTap: () {
                              textController.pagecontroller.jumpToPage(2);
                            },
                            child: const Text(
                              "Skip",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
