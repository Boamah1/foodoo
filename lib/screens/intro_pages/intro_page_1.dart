import 'package:foodoo/hooks/export.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 25.w, right: 25.w),
          child: Column(
            children: [
              Container(
                height: 300.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.w),
                  // color: Colors.red,
                  image: const DecorationImage(
                    image: AssetImage('images/Do vegetables fly_!.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 60.h),
              Text(
                "Foods",
                style: TextStyle(
                  fontFamily: "PlayfairDisplay",
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text:
                      "Food anything solid or liquid which when swallowed, igested and",
                  style: TextStyle(
                    fontFamily: 'Lobster Two',
                    color: Colors.black,
                    fontSize: 14.sp,
                  ),
                  children: const [
                    TextSpan(
                      text:
                          "\nassimilated in the body provides it with essential nsubstances\n",
                      style: TextStyle(
                        fontFamily: 'Lobster Two',
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "called nnutrients and keeps it well..",
                      style: TextStyle(
                        fontFamily: 'Lobster Two',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 20.h),
              // SizedBox(
              //   height: 50,
              //   width: 140,
              //   child: TextButton(
              //     onPressed: () {
              //       Navigator.push(
              //         (context),
              //         MaterialPageRoute(
              //           builder: (context) => IntroPage2(),
              //         ),
              //       );
              //     },
              //     style: ElevatedButton.styleFrom(
              //       primary: Colors.grey[350],
              //       onPrimary: Colors.black,
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(27),
              //       ),
              //     ),
              //     child: const Text(
              //       "Next",
              //       style: TextStyle(
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(height: 20.h),
              // Center(
              //   child: InkWell(
              //     onTap: () {},
              //     child: const Text(
              //       "Skip",
              //       style: TextStyle(
              //           color: Colors.black, fontWeight: FontWeight.bold),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
